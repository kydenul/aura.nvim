local M = {}

---@class AuraColorscheme.InternalConfig
local DEFAULT_SETTINGS = {

  ---@type boolean
  transparent = false,
  ---@type boolean
  bold = true,
  ---@type boolean
  italic = true,
  -- Darken non-current windows (`NormalNC`, `WinBarNC`) with `bg0`. Ignored when `transparent`.
  ---@type boolean
  dim_inactive = false,
  -- Set `vim.g.terminal_color_0..15` from the palette.
  ---@type boolean
  terminal_colors = true,
  -- Cache the resolved highlight groups in `stdpath("cache")/aura` so later startups skip building them.
  -- Measured gain is negligible (building ~1.5ms; most time is `nvim_set_hl`), hence off by default.
  -- The cache is invalidated when the config or any aura source file changes (not on `on_highlights` upvalue changes:
  -- call `require("aura").compile()` for that).
  ---@type boolean
  compile = false,

  ---@param highlights table<string, vim.api.keyset.highlight>
  ---@param colors AuraColorscheme.InternalConfig.colors
  on_highlights = function(highlights, colors) end,

  -- Palette migrated from nightfox.nvim's `duskfox`
  ---@class AuraColorscheme.InternalConfig.colors
  -- stylua: ignore
  colors = {
    bg0  = "#191726", -- Dark bg (status line and float)
    bg1  = "#232136", -- Default bg
    bg2  = "#2d2a45", -- Lighter bg (colorcolumn, folds)
    bg3  = "#3a3460", -- Lighter bg (cursor line)
    bg4  = "#4b4673", -- Conceal, border fg

    fg0  = "#eae8ff", -- Lighter fg
    fg1  = "#e0def4", -- Default fg
    fg2  = "#cdcbe0", -- Darker fg (status line)
    fg3  = "#6e6a86", -- Darker fg (line numbers, fold columns)

    sel0 = "#433c59", -- Popup bg, visual selection bg
    sel1 = "#63577d", -- Popup sel bg, search bg

    palette = {
      black   = { base = "#393552", bright = "#47407d", dim = "#322e42" },
      red     = { base = "#eb6f92", bright = "#f083a2", dim = "#d84f76" },
      green   = { base = "#a3be8c", bright = "#b1d196", dim = "#8aa872" },
      yellow  = { base = "#f6c177", bright = "#f9cb8c", dim = "#e6a852" },
      blue    = { base = "#569fba", bright = "#65b1cd", dim = "#4a869c" },
      magenta = { base = "#c4a7e7", bright = "#ccb1ed", dim = "#a580d2" },
      cyan    = { base = "#9ccfd8", bright = "#a6dae3", dim = "#7bb8c1" },
      white   = { base = "#e0def4", bright = "#e2e0f7", dim = "#b1acde" },
      orange  = { base = "#ea9a97", bright = "#f0a4a2", dim = "#d6746f" },
      pink    = { base = "#eb98c3", bright = "#f0a6cc", dim = "#d871a6" },
    },

    syntax = {
      bracket     = "#cdcbe0", -- Brackets and punctuation
      builtin0    = "#eb6f92", -- Builtin variable
      builtin1    = "#a6dae3", -- Builtin type
      builtin2    = "#f0a4a2", -- Builtin const
      builtin3    = "#f083a2", -- Interface
      comment     = "#817c9c", -- Comment
      conditional = "#ccb1ed", -- Conditional and loop
      const       = "#f0a4a2", -- Constants, imports and booleans
      dep         = "#6e6a86", -- Deprecated
      field       = "#569fba", -- Field
      func        = "#65b1cd", -- Functions and titles
      ident       = "#9ccfd8", -- Identifiers
      keyword     = "#c4a7e7", -- Keywords
      number      = "#ea9a97", -- Numbers
      operator    = "#cdcbe0", -- Operators
      preproc     = "#f0a6cc", -- PreProc
      regex       = "#f9cb8c", -- Regex
      statement   = "#c4a7e7", -- Statements
      string      = "#a3be8c", -- Strings
      type        = "#f6c177", -- Types
      variable    = "#e0def4", -- Variables
    },

    diag = {
      error = "#eb6f92",
      warn  = "#f6c177",
      info  = "#569fba",
      hint  = "#a3be8c",
      ok    = "#a3be8c",
    },

    diag_bg = {
      error = "#412d44",
      warn  = "#433940",
      info  = "#2b344a",
      hint  = "#363943",
      ok    = "#363943",
    },

    diff = {
      add    = "#3d4047",
      delete = "#4b3148",
      change = "#2d3a50",
      text   = "#37536b",
    },

    git = {
      add      = "#a3be8c",
      removed  = "#eb6f92",
      changed  = "#f6c177",
      conflict = "#ea9a97",
      ignored  = "#817c9c",
    },
  },
}

M._DEFAULT_SETTINGS = DEFAULT_SETTINGS
M.current = M._DEFAULT_SETTINGS

local opts = type(vim.g.aura_colorscheme) == "function" and vim.g.aura_colorscheme()
  or vim.g.aura_colorscheme
  or {}

---@param user_opts AuraColorscheme.Config
M.set = function(user_opts) M.current = vim.tbl_deep_extend("force", vim.deepcopy(M.current), user_opts or opts) end

return M
