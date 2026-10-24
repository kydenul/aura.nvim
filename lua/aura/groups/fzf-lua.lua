local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local p = c.palette

  -- stylua: ignore
  local hl = {
    FzfLuaBorder     = { link = "FloatBorder" },
    FzfLuaHeaderBind = { fg = p.pink.base },
    FzfLuaHeaderText = { fg = p.red.base },
    FzfLuaPathLineNr = { fg = p.green.base },
    FzfLuaPathColNr  = { fg = p.blue.base },
    FzfLuaLivePrompt = { fg = p.pink.base },
    FzfLuaLiveSym    = { fg = p.green.base },
    FzfLuaBufNr      = { fg = p.green.base },
    FzfLuaBufFlagCur = { fg = p.red.base },
    FzfLuaBufFlagAlt = { fg = p.blue.base },
    FzfLuaTabTitle   = { fg = p.cyan.base },
    FzfLuaTabMarker  = { fg = p.yellow.base },
  }

  return hl
end

return M
