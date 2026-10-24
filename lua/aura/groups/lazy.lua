local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  -- stylua: ignore
  local hl = {
    LazyButtonActive = { link = "TabLineSel" },
    LazyDimmed       = { link = "LineNr" },
    LazyProp         = { link = "LineNr" },
  }

  return hl
end

return M
