local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local p = c.palette

  -- stylua: ignore
  local hl = {
    NeoTreeNormal             = { fg = c.fg1, bg = conf.transparent and "NONE" or c.bg0 },
    NeoTreeNormalNC           = { link = "NeoTreeNormal" },
    NeoTreeVertSplit          = { link = "WinSeparator" },
    NeoTreeWinSeparator       = { link = "WinSeparator" },
    NeoTreeIndentMarker       = { fg = c.bg4 },

    NeoTreeRootName           = { fg = p.orange.base, bold = conf.bold },
    NeoTreeDirectoryName      = { fg = p.blue.base },
    NeoTreeDirectoryIcon      = { fg = p.blue.base },
    NeoTreeDotfile            = { fg = p.blue.dim },
    NeoTreeSymbolicLinkTarget = { fg = p.pink.dim },
    NeoTreeFileName           = { fg = c.fg2 },
    NeoTreeFileNameOpened     = { fg = c.fg1 },
    NeoTreeDimText            = { link = "Conceal" },

    NeoTreeGitModified        = { fg = c.git.changed },
    NeoTreeGitAdded           = { fg = c.git.add },
    NeoTreeGitDeleted         = { fg = c.git.removed },
    NeoTreeGitConflict        = { fg = c.git.conflict, italic = conf.italic },
    NeoTreeGitIgnored         = { fg = c.git.ignored },
    NeoTreeGitUntracked       = { fg = p.magenta.dim },
  }

  return hl
end

return M
