local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local s = c.syntax

  -- stylua: ignore
  local hl = {
    Comment        = { fg = s.comment, italic = conf.italic },
    Constant       = { fg = s.const },
    String         = { fg = s.string },
    Character      = { link = "String" },
    Number         = { fg = s.number },
    Float          = { link = "Number" },
    Boolean        = { link = "Number" },

    Identifier     = { fg = s.ident },
    Function       = { fg = s.func },

    Statement      = { fg = s.keyword },
    Conditional    = { fg = s.conditional },
    Repeat         = { link = "Conditional" },
    Label          = { link = "Conditional" },

    Operator       = { fg = s.operator },
    Keyword        = { fg = s.keyword },
    Exception      = { link = "Keyword" },

    PreProc        = { fg = s.preproc },
    Include        = { link = "PreProc" },
    Define         = { link = "PreProc" },
    Macro          = { link = "PreProc" },
    PreCondit      = { link = "PreProc" },

    Type           = { fg = s.type },
    StorageClass   = { link = "Type" },
    Structure      = { link = "Type" },
    Typedef        = { link = "Type" },

    Special        = { fg = s.func },
    SpecialChar    = { link = "Special" },
    Tag            = { link = "Special" },
    Delimiter      = { link = "Special" },
    SpecialComment = { link = "Special" },
    Debug          = { link = "Special" },

    Underlined     = { underline = true },
    Bold           = { bold = true },
    Italic         = { italic = true },

    Error          = { fg = c.diag.error },
    Todo           = { fg = c.bg1, bg = c.diag.info },

    typescriptParens = { fg = s.bracket },
  }

  return hl
end

return M
