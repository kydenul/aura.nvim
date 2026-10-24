local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local s = c.syntax

  -- stylua: ignore
  local hl = {
    CmpDocumentation         = { fg = c.fg1, bg = c.bg0 },
    CmpDocumentationBorder   = { fg = c.sel0, bg = c.bg0 },

    CmpItemAbbr              = { fg = c.fg1 },
    CmpItemAbbrDeprecated    = { fg = s.dep, strikethrough = true },
    CmpItemAbbrMatch         = { fg = s.func },
    CmpItemAbbrMatchFuzzy    = { fg = s.func },

    CmpItemKindDefault       = { fg = c.fg2 },
    CmpItemMenu              = { link = "Comment" },

    CmpItemKindKeyword       = { link = "Identifier" },
    CmpItemKindVariable      = { link = "@variable" },
    CmpItemKindConstant      = { link = "@constant" },
    CmpItemKindReference     = { link = "Keyword" },
    CmpItemKindValue         = { link = "Keyword" },

    CmpItemKindFunction      = { link = "Function" },
    CmpItemKindMethod        = { link = "Function" },
    CmpItemKindConstructor   = { link = "Function" },

    CmpItemKindInterface     = { link = "Constant" },
    CmpItemKindEvent         = { link = "Constant" },
    CmpItemKindEnum          = { link = "Constant" },
    CmpItemKindUnit          = { link = "Constant" },

    CmpItemKindClass         = { link = "Type" },
    CmpItemKindStruct        = { link = "Type" },

    CmpItemKindModule        = { link = "@module" },

    CmpItemKindProperty      = { link = "@property" },
    CmpItemKindField         = { link = "@variable.member" },
    CmpItemKindTypeParameter = { link = "@variable.member" },
    CmpItemKindEnumMember    = { link = "@variable.member" },
    CmpItemKindOperator      = { link = "Operator" },
    CmpItemKindSnippet       = { fg = c.fg2 },
  }

  return hl
end

return M
