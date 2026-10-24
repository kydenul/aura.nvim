local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local p = conf.colors.palette

  -- stylua: ignore
  local hl = {
    ModesCopy    = { bg = p.yellow.base },
    ModesDelete  = { bg = p.red.base },
    ModesFormat  = { bg = p.pink.base },
    ModesInsert  = { bg = p.cyan.base },
    ModesReplace = { bg = p.orange.base },
    ModesVisual  = { bg = p.magenta.base },
  }

  return hl
end

return M
