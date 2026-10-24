local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local p = c.palette

  -- stylua: ignore
  local hl = {
    ModesCopy    = { bg = p.yellow.base },
    ModesDelete  = { bg = p.red.base },
    ModesFormat  = { bg = p.pink.base },
    ModesInsert  = { bg = p.cyan.base },
    ModesReplace = { bg = p.orange.base },
    ModesVisual  = { bg = p.magenta.base },

    -- Groups missing from aura: original vague colors
    ModesInsertCursorLine     = { bg = c.bg2 },
    ModesInsertCursorLineNr   = { bg = c.bg2 },
    ModesInsertCursorLineFold = { bg = c.bg2 },
    ModesInsertCursorLineSign = { bg = c.bg2 },
  }

  return hl
end

return M
