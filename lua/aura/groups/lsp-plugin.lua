local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local d = c.diag

  -- stylua: ignore
  local hl = {
    DiagnosticError            = { fg = d.error },
    DiagnosticWarn             = { fg = d.warn },
    DiagnosticInfo             = { fg = d.info },
    DiagnosticHint             = { fg = d.hint },
    DiagnosticOk               = { fg = d.ok },

    DiagnosticSignError        = { link = "DiagnosticError" },
    DiagnosticSignWarn         = { link = "DiagnosticWarn" },
    DiagnosticSignInfo         = { link = "DiagnosticInfo" },
    DiagnosticSignHint         = { link = "DiagnosticHint" },
    DiagnosticSignOk           = { link = "DiagnosticOk" },

    DiagnosticVirtualTextError = { fg = d.error, bg = "NONE" },
    DiagnosticVirtualTextWarn  = { fg = d.warn, bg = "NONE" },
    DiagnosticVirtualTextInfo  = { fg = d.info, bg = "NONE" },
    DiagnosticVirtualTextHint  = { fg = d.hint, bg = "NONE" },
    DiagnosticVirtualTextOk    = { fg = d.ok, bg = "NONE" },

    DiagnosticUnderlineError   = { sp = d.error, undercurl = true },
    DiagnosticUnderlineWarn    = { sp = d.warn, undercurl = true },
    DiagnosticUnderlineInfo    = { sp = d.info, undercurl = true },
    DiagnosticUnderlineHint    = { sp = d.hint, undercurl = true },
    DiagnosticUnderlineOk      = { sp = d.ok, undercurl = true },

    LspReferenceText           = { bg = c.sel0, underline = true },
    LspReferenceRead           = { bg = c.sel0, underline = true },
    LspReferenceWrite          = { bg = c.sel0, underline = true },

    LspCodeLens                = { fg = c.syntax.comment },
    LspCodeLensSeparator       = { fg = c.fg3 },
    LspSignatureActiveParameter = { fg = c.sel1 },
    LspInlayHint               = { fg = c.syntax.comment, bg = "NONE" },
  }

  return hl
end

return M
