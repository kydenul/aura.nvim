local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    TelescopeBorder         = { fg = c.bg4 },
    TelescopeSelectionCaret = { fg = c.diag.hint },
    TelescopeSelection      = { link = "CursorLine" },
    TelescopeMatching       = { link = "Search" },
  }

  return hl
end

return M
