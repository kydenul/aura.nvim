local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local s = c.syntax

  -- stylua: ignore
  local hl = {
    BlinkCmpDoc               = { fg = c.fg1, bg = c.bg0 },
    BlinkCmpDocBorder         = { fg = c.sel0, bg = c.bg0 },
    BlinkCmpMenuBorder        = { fg = c.sel0, bg = c.bg0 },
    BlinkCmpSignatureHelpBorder = { fg = c.sel0, bg = c.bg0 },

    BlinkCmpLabel             = { fg = c.fg1 },
    BlinkCmpLabelDeprecated   = { fg = s.dep, strikethrough = true },
    BlinkCmpLabelMatch        = { fg = s.func },
    BlinkCmpLabelDetail       = { link = "Comment" },

    BlinkCmpKindDefault       = { fg = c.fg2 },
    BlinkCmpKindKeyword       = { link = "Identifier" },
    BlinkCmpKindVariable      = { link = "@variable" },
    BlinkCmpKindConstant      = { link = "@constant" },
    BlinkCmpKindReference     = { link = "Keyword" },
    BlinkCmpKindValue         = { link = "Keyword" },

    BlinkCmpKindFunction      = { link = "Function" },
    BlinkCmpKindMethod        = { link = "Function" },
    BlinkCmpKindConstructor   = { link = "Function" },

    BlinkCmpKindInterface     = { link = "Constant" },
    BlinkCmpKindEvent         = { link = "Constant" },
    BlinkCmpKindEnum          = { link = "Constant" },
    BlinkCmpKindUnit          = { link = "Constant" },

    BlinkCmpKindClass         = { link = "Type" },
    BlinkCmpKindStruct        = { link = "Type" },

    BlinkCmpKindModule        = { link = "@module" },

    BlinkCmpKindProperty      = { link = "@property" },
    BlinkCmpKindField         = { link = "@variable.member" },
    BlinkCmpKindTypeParameter = { link = "@variable.member" },
    BlinkCmpKindEnumMember    = { link = "@variable.member" },
    BlinkCmpKindOperator      = { link = "Operator" },
    BlinkCmpKindSnippet       = { fg = c.fg2 },
  }

  return hl
end

return M
