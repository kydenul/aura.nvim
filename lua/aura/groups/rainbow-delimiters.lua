local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local p = conf.colors.palette

  -- stylua: ignore
  local hl = {
    RainbowDelimiterRed    = { fg = p.red.base },
    RainbowDelimiterOrange = { fg = p.orange.base },
    RainbowDelimiterYellow = { fg = p.yellow.base },
    RainbowDelimiterGreen  = { fg = p.green.base },
    RainbowDelimiterBlue   = { fg = p.blue.base },
    RainbowDelimiterViolet = { fg = p.magenta.base },
    RainbowDelimiterCyan   = { fg = p.cyan.base },
  }

  return hl
end

return M
