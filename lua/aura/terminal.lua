local curr_internal_conf = require("aura.config.internal").current
local M = {}

M.set_highlights = function()
  if not curr_internal_conf.terminal_colors then return end
  local p = curr_internal_conf.colors.palette
  vim.g.terminal_color_0 = p.black.base
  vim.g.terminal_color_1 = p.red.base
  vim.g.terminal_color_2 = p.green.base
  vim.g.terminal_color_3 = p.yellow.base
  vim.g.terminal_color_4 = p.blue.base
  vim.g.terminal_color_5 = p.magenta.base
  vim.g.terminal_color_6 = p.cyan.base
  vim.g.terminal_color_7 = p.white.base
  vim.g.terminal_color_8 = p.black.bright
  vim.g.terminal_color_9 = p.red.bright
  vim.g.terminal_color_10 = p.green.bright
  vim.g.terminal_color_11 = p.yellow.bright
  vim.g.terminal_color_12 = p.blue.bright
  vim.g.terminal_color_13 = p.magenta.bright
  vim.g.terminal_color_14 = p.cyan.bright
  vim.g.terminal_color_15 = p.white.bright
end
return M
