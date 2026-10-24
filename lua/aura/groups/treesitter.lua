local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local s = c.syntax
  local p = c.palette

  -- stylua: ignore
  local hl = {
    -- Identifiers
    ["@variable"]                    = { fg = s.variable },
    ["@variable.builtin"]            = { fg = s.builtin0 },
    ["@variable.parameter"]          = { fg = s.builtin1 },
    ["@variable.member"]             = { fg = s.field },

    ["@constant"]                    = { link = "Constant" },
    ["@constant.builtin"]            = { fg = s.builtin2, bold = conf.bold },
    ["@constant.macro"]              = { link = "Macro" },

    ["@module"]                      = { fg = s.builtin1 },
    ["@label"]                       = { link = "Label" },

    -- Literals
    ["@string"]                      = { link = "String" },
    ["@string.regexp"]               = { fg = s.regex },
    ["@string.escape"]               = { fg = s.regex, bold = true },
    ["@string.special"]              = { link = "Special" },
    ["@string.special.url"]          = { fg = s.const, italic = true, underline = true },

    ["@character"]                   = { link = "Character" },
    ["@character.special"]           = { link = "SpecialChar" },

    ["@boolean"]                     = { link = "Boolean" },
    ["@number"]                      = { link = "Number" },
    ["@number.float"]                = { link = "Float" },

    -- Types
    ["@type"]                        = { link = "Type" },
    ["@type.builtin"]                = { fg = s.builtin1 },
    ["@attribute"]                   = { link = "Constant" },
    ["@property"]                    = { fg = s.field },

    -- Functions
    ["@function"]                    = { link = "Function" },
    -- Groups missing from aura: original vague colors
    ["@function.call"]               = { fg = "#bb9dbd" },
    ["@function.method.call"]        = { fg = "#9bb4bc" },
    ["@string.special.symbol"]       = { link = "Identifier" },
    ["@type.declaration"]            = { fg = "#aeaed1" },
    ["@type.definition"]             = { link = "Typedef" },
    ["@function.builtin"]            = { fg = s.builtin0 },
    ["@function.macro"]              = { fg = s.builtin0 },
    ["@constructor"]                 = { fg = s.ident },
    ["@operator"]                    = { link = "Operator" },

    -- Keywords
    ["@keyword"]                     = { link = "Keyword" },
    ["@keyword.function"]            = { fg = s.keyword },
    ["@keyword.operator"]            = { fg = s.operator },
    ["@keyword.import"]              = { link = "Include" },
    ["@keyword.storage"]             = { link = "StorageClass" },
    ["@keyword.repeat"]              = { link = "Repeat" },
    ["@keyword.return"]              = { fg = s.builtin0 },
    ["@keyword.exception"]           = { link = "Exception" },
    ["@keyword.conditional"]         = { link = "Conditional" },
    ["@keyword.conditional.ternary"] = { link = "Conditional" },

    -- Punctuation
    ["@punctuation.delimiter"]       = { fg = s.bracket },
    ["@punctuation.bracket"]         = { fg = s.bracket },
    ["@punctuation.special"]         = { fg = s.builtin1 },

    -- Comments
    ["@comment"]                     = { link = "Comment" },
    ["@comment.error"]               = { fg = c.bg1, bg = c.diag.error },
    ["@comment.warning"]             = { fg = c.bg1, bg = c.diag.warn },
    ["@comment.todo"]                = { fg = c.bg1, bg = c.diag.hint },
    ["@comment.note"]                = { fg = c.bg1, bg = c.diag.info },

    -- Markup
    ["@markup"]                      = { fg = c.fg1 },
    ["@markup.strong"]               = { fg = p.red.dim, bold = true },
    ["@markup.italic"]               = { italic = true },
    ["@markup.strikethrough"]        = { fg = c.fg1, strikethrough = true },
    ["@markup.underline"]            = { underline = true },
    ["@markup.heading"]              = { link = "Title" },
    ["@markup.quote"]                = { fg = c.fg2 },
    ["@markup.math"]                 = { fg = s.func },
    ["@markup.link"]                 = { fg = s.keyword, bold = true },
    ["@markup.link.label"]           = { link = "Special" },
    ["@markup.link.url"]             = { fg = s.const, italic = true, underline = true },
    ["@markup.raw"]                  = { fg = s.ident, italic = true },
    ["@markup.raw.block"]            = { fg = p.pink.base },
    ["@markup.list"]                 = { fg = s.builtin1 },
    ["@markup.list.checked"]         = { fg = p.green.base },
    ["@markup.list.unchecked"]       = { fg = p.yellow.base },

    ["@diff.plus"]                   = { link = "diffAdded" },
    ["@diff.minus"]                  = { link = "diffRemoved" },
    ["@diff.delta"]                  = { link = "diffChanged" },

    ["@tag"]                         = { fg = s.keyword },
    ["@tag.attribute"]               = { fg = s.func, italic = true },
    ["@tag.delimiter"]               = { fg = s.builtin1 },

    -- Language specific
    ["@label.json"]                  = { fg = s.func },
    ["@constructor.lua"]             = { fg = c.fg2 },
    ["@field.rust"]                  = { fg = c.fg2 },
    ["@variable.member.yaml"]        = { fg = s.func },
  }

  return hl
end

return M
