-- Lualine theme built from the aura palette (adapted from nightfox's lualine theme).
-- Loaded automatically by lualine when `theme = "auto"` and the colorscheme is `aura`.
local conf = require("aura.config.internal").current
local util = require("aura.util")
local c = conf.colors
local p = c.palette
local gui = conf.bold and "bold" or nil

-- Section c background is dropped when the colorscheme is transparent
local c_bg = conf.transparent and "NONE" or c.bg0

---@param color string
local function fade(color) return util.blend(color, c.bg0, 0.3) end

---@param color string
local function mode(color)
  return {
    a = { fg = c.bg0, bg = color, gui = gui },
    b = { fg = c.fg1, bg = fade(color) },
    c = { fg = c.fg2, bg = c_bg },
  }
end

return {
  normal = mode(p.blue.base),
  insert = mode(p.green.base),
  visual = mode(p.magenta.base),
  replace = mode(p.red.base),
  command = mode(p.yellow.base),
  terminal = mode(p.orange.base),
  inactive = {
    a = { fg = p.blue.base, bg = c_bg },
    b = { fg = c.fg3, bg = c_bg, gui = gui },
    c = { fg = c.syntax.comment, bg = c_bg },
  },
}
