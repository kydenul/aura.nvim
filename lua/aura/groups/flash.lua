local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    FlashBackdrop = { fg = c.syntax.comment },
    FlashMatch    = { fg = c.fg0, bg = c.sel1 },
    FlashCurrent  = { fg = c.bg1, bg = c.palette.yellow.base },
    FlashLabel    = { fg = c.bg1, bg = c.palette.pink.base, bold = conf.bold },
  }

  return hl
end

return M
