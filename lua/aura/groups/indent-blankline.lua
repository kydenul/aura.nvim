local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    IblIndent     = { fg = c.bg3 },
    IblWhitespace = { fg = c.bg3 },
    IblScope      = { fg = c.fg3 },
  }

  return hl
end

return M
