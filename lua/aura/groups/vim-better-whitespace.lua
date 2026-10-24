local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    ExtraWhitespace = { bg = c.palette.red.base },
  }

  return hl
end

return M
