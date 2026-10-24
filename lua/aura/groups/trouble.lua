local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    TroubleCount = { fg = c.palette.magenta.base, bg = c.sel0 },
    TroubleText  = { fg = c.fg2 },
  }

  return hl
end

return M
