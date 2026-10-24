local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    SnacksInputBorder = { link = "FloatBorder" },
    SnacksInputPrompt = { fg = c.syntax.comment },
    SnacksInputTitle  = { link = "FloatTitle" },
    SnacksInputIcon   = { fg = c.syntax.func },
  }

  return hl
end

return M
