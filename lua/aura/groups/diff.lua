local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors

  -- stylua: ignore
  local hl = {
    DiffAdd       = { bg = c.diff.add },
    DiffChange    = { bg = c.diff.change },
    DiffDelete    = { bg = c.diff.delete },
    DiffText      = { bg = c.diff.text },

    Added         = { fg = c.git.add },
    Changed       = { fg = c.git.changed },
    Removed       = { fg = c.git.removed },

    diffAdded     = { fg = c.git.add },
    diffRemoved   = { fg = c.git.removed },
    diffChanged   = { fg = c.git.changed },
    diffOldFile   = { fg = c.diag.warn },
    diffNewFile   = { fg = c.diag.hint },
    diffFile      = { fg = c.diag.info },
    diffLine      = { fg = c.syntax.builtin2 },
    diffIndexLine = { fg = c.syntax.preproc },
  }

  return hl
end

return M
