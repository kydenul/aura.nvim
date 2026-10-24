local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    htmlTag            = { fg = c.syntax.builtin1 },
    htmlEndTag         = { fg = c.syntax.builtin1 },
    htmlTagName        = { fg = c.syntax.keyword },
    htmlArg            = { fg = c.syntax.func, italic = conf.italic },
    htmlSpecialTagName = { fg = c.syntax.keyword },
  }

  return hl
end

return M
