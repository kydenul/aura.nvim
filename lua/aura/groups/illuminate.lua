local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  -- stylua: ignore
  local hl = {
    IlluminatedWordText  = { link = "LspReferenceText" },
    IlluminatedWordRead  = { link = "LspReferenceRead" },
    IlluminatedWordWrite = { link = "LspReferenceWrite" },
  }

  return hl
end

return M
