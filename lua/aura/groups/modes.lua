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

    -- Groups missing from aura: original vague colors
    ModesInsertCursorLine     = { bg = "#252530" },
    ModesInsertCursorLineNr   = { bg = "#252530" },
    ModesInsertCursorLineFold = { bg = "#252530" },
    ModesInsertCursorLineSign = { bg = "#252530" },
  }

  return hl
end

return M
