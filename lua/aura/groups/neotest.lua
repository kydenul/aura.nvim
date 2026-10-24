local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local p = c.palette

  -- stylua: ignore
  local hl = {
    NeotestPassed       = { fg = p.green.base },
    NeotestFailed       = { fg = c.diag.error },
    NeotestRunning      = { fg = p.orange.base },
    NeotestSkipped      = { fg = c.diag.warn },
    NeotestTest         = { link = "Normal" },
    NeotestNamespace    = { fg = p.cyan.dim },
    NeotestMarked       = { fg = c.fg1, bold = conf.bold },
    NeotestFocused      = { underline = true },
    NeotestFile         = { fg = p.blue.base },
    NeotestDir          = { fg = p.cyan.base },
    NeotestIndent       = { link = "Conceal" },
    NeotestExpandMarker = { link = "Conceal" },
    NeotestAdapterName  = { fg = p.pink.base, bold = conf.bold },
  }

  return hl
end

return M
