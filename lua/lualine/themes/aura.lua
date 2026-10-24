-- Lualine theme following gruvbox's Airline theme (third_party/gruvbox/autoload/airline/themes/gruvbox.vim).
-- Loaded automatically by lualine when `theme = "auto"` and the colorscheme is `aura`.
local conf = require("aura.config.internal").current
local gui = conf.bold and "bold" or nil

-- Gruvbox dark colors resolved from the Airline theme's highlight lookups
local bg0, bg1, bg2, bg4 = "#282828", "#3c3836", "#504945", "#7c6f64"
local fg1, fg4 = "#ebdbb2", "#a89984"
local blue, aqua, orange = "#83a598", "#8ec07c", "#fe8019"

-- Section c background is dropped when the colorscheme is transparent
local c_bg = conf.transparent and "NONE" or bg1

local function mode(a_bg, c_fg, c_bg_)
  return {
    a = { fg = bg0, bg = a_bg, gui = gui },
    b = { fg = fg4, bg = bg2 },
    c = { fg = c_fg or fg4, bg = c_bg_ or c_bg },
  }
end

local normal = mode(fg4)

return {
  normal = normal,
  insert = mode(blue, fg1, bg2),
  visual = mode(orange, bg0, bg4),
  replace = mode(aqua, fg1, bg2),
  command = normal, -- Airline's gruvbox theme has no command palette
  inactive = {
    a = { fg = bg4, bg = bg1 },
    b = { fg = bg4, bg = bg1 },
    c = { fg = bg4, bg = c_bg },
  },
}
