local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    GitSignsAdd             = { fg = c.git.add },
    GitSignsChange          = { fg = c.git.changed },
    GitSignsDelete          = { fg = c.git.removed },
    GitSignsTopdelete       = { link = "GitSignsDelete" },
    GitSignsChangedelete    = { link = "GitSignsChange" },
    GitSignsUntracked       = { fg = c.git.ignored },
    GitSignsCurrentLineBlame = { fg = c.syntax.comment },
  }

  return hl
end

return M
