local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    DashboardShortCut = { link = "Identifier" },
    DashboardHeader   = { link = "Title" },
    DashboardCenter   = { link = "String" },
    DashboardFooter   = { fg = c.syntax.const, italic = conf.italic },
  }

  return hl
end

return M
