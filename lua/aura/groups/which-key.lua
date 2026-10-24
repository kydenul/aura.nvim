local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  -- stylua: ignore
  local hl = {
    WhichKey          = { link = "Identifier" },
    WhichKeyGroup     = { link = "Function" },
    WhichKeyDesc      = { link = "Keyword" },
    WhichKeySeparator = { link = "Comment" },
    WhichKeyValue     = { link = "Comment" },
    WhichKeyNormal    = { link = "NormalFloat" },
    WhichKeyBorder    = { link = "FloatBorder" },
    WhichKeyTitle     = { link = "FloatTitle" },
  }

  return hl
end

return M
