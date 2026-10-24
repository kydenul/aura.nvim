local util = require("aura.util")
local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local function border(color) return util.blend(color, c.bg1, 0.5) end

  -- stylua: ignore
  local hl = {
    NotifyERRORBorder = { fg = border(c.diag.error) },
    NotifyWARNBorder  = { fg = border(c.diag.warn) },
    NotifyINFOBorder  = { fg = border(c.diag.info) },
    NotifyDEBUGBorder = { fg = border(c.diag.hint) },
    NotifyTRACEBorder = { fg = c.bg4 },

    NotifyERRORTitle  = { fg = c.diag.error },
    NotifyWARNTitle   = { fg = c.diag.warn },
    NotifyINFOTitle   = { fg = c.diag.info },
    NotifyDEBUGTitle  = { fg = c.diag.hint },
    NotifyTRACETitle  = { fg = c.syntax.comment },

    NotifyERRORIcon   = { link = "NotifyERRORTitle" },
    NotifyWARNIcon    = { link = "NotifyWARNTitle" },
    NotifyINFOIcon    = { link = "NotifyINFOTitle" },
    NotifyDEBUGIcon   = { link = "NotifyDEBUGTitle" },
    NotifyTRACEIcon   = { link = "NotifyTRACETitle" },
    NotifyBackground  = { link = "NormalFloat" },
  }

  return hl
end

return M
