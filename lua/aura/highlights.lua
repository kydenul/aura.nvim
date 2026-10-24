local M = {}

local function build()
  local conf = require("aura.config.internal").current
  local highlights = {}
  for _, group in pairs(require("aura.groups")) do
    for hl, settings in pairs(group) do
      highlights[hl] = settings
    end
  end

  -- Allow user to add or override any highlight groups
  conf.on_highlights(highlights, conf.colors)
  return highlights
end

local function cache_path() return vim.fs.joinpath(vim.fn.stdpath("cache"), "aura", "highlights.lua") end

-- Fingerprint of everything the compiled output depends on: config values, `on_highlights` bytecode and aura sources.
local function fingerprint(conf)
  local opts = vim.deepcopy(conf)
  opts.on_highlights = nil
  local parts = { vim.inspect(opts) }

  local ok, dumped = pcall(string.dump, conf.on_highlights, true)
  parts[#parts + 1] = ok and dumped or ""

  local root = vim.fs.dirname(vim.fs.dirname(debug.getinfo(1, "S").source:sub(2)))
  for _, file in ipairs(vim.fn.glob(root .. "/**/*.lua", false, true)) do
    local stat = vim.uv.fs_stat(file)
    parts[#parts + 1] = file .. (stat and (stat.mtime.sec .. "." .. stat.mtime.nsec .. ":" .. stat.size) or "")
  end
  return vim.fn.sha256(table.concat(parts, "\0"))
end

---@param highlights table<string, vim.api.keyset.highlight>
local function apply(highlights)
  for hl, settings in pairs(highlights) do
    vim.api.nvim_set_hl(0, hl, settings)
  end
end

--- Build the highlights and write them to the cache file. Returns the highlights.
M.compile = function()
  local conf = require("aura.config.internal").current
  local highlights = build()
  local path = cache_path()
  vim.fn.mkdir(vim.fs.dirname(path), "p")
  local out = string.format("return { hash = %q, highlights = %s }\n", fingerprint(conf), vim.inspect(highlights))
  local f = io.open(path, "w")
  if f then
    f:write(out)
    f:close()
  end
  return highlights
end

M.set_highlights = function()
  local conf = require("aura.config.internal").current
  if not conf.compile then return apply(build()) end

  local chunk = loadfile(cache_path())
  local ok, cached = pcall(chunk or error, "no cache")
  if ok and type(cached) == "table" and cached.hash == fingerprint(conf) then return apply(cached.highlights) end

  apply(M.compile())
end

return M
