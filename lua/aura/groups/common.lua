local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local trans = conf.transparent

  -- stylua: ignore
  local hl = {
    ColorColumn        = { bg = c.bg2 },
    Conceal            = { fg = c.bg4 },
    Cursor             = { fg = c.bg1, bg = c.fg1 },
    lCursor            = { link = "Cursor" },
    CursorIM           = { link = "Cursor" },
    CursorColumn       = { link = "CursorLine" },
    CursorLine         = { bg = c.bg3 },
    CursorLineNr       = { fg = c.diag.warn, bold = conf.bold },
    Directory          = { fg = c.syntax.func },
    EndOfBuffer        = { fg = c.bg1 },
    ErrorMsg           = { fg = c.diag.error },
    OkMsg              = { fg = c.diag.ok },
    FloatBorder        = { fg = c.fg3 },
    FloatTitle         = { fg = c.syntax.func, bold = conf.bold },
    FloatShadow        = { bg = c.bg0 },
    FloatShadowThrough = { bg = c.bg0 },
    WinSeparator       = { fg = c.bg0 },
    VertSplit          = { link = "WinSeparator" },
    Folded             = { fg = c.fg3, bg = c.bg2 },
    FoldColumn         = { fg = c.fg3 },
    SignColumn         = { fg = c.fg3 },
    SignColumnSB       = { link = "SignColumn" },
    Substitute         = { fg = c.bg1, bg = c.diag.error },
    LineNr             = { fg = c.fg3 },
    MatchParen         = { fg = c.diag.warn, bold = conf.bold },
    ModeMsg            = { fg = c.diag.warn, bold = conf.bold },
    MoreMsg            = { fg = c.diag.info, bold = conf.bold },
    NonText            = { fg = c.bg4 },
    Normal             = { fg = c.fg1, bg = trans and "NONE" or c.bg1 },
    NormalNC           = { fg = c.fg1, bg = trans and "NONE" or c.bg1 },
    NormalFloat        = { fg = c.fg1, bg = c.bg0 },
    Pmenu              = { fg = c.fg1, bg = c.sel0 },
    PmenuSel           = { bg = c.sel1 },
    PmenuSbar          = { link = "Pmenu" },
    PmenuThumb         = { bg = c.sel1 },
    Question           = { link = "MoreMsg" },
    QuickFixLine       = { link = "CursorLine" },
    Search             = { fg = c.fg1, bg = c.sel1 },
    IncSearch          = { fg = c.bg1, bg = c.diag.hint },
    CurSearch          = { link = "IncSearch" },
    SpecialKey         = { link = "NonText" },
    SpellBad           = { sp = c.diag.error, undercurl = true },
    SpellCap           = { sp = c.diag.warn, undercurl = true },
    SpellLocal         = { sp = c.diag.info, undercurl = true },
    SpellRare          = { sp = c.diag.info, undercurl = true },
    StatusLine         = { fg = c.fg2, bg = c.bg0 },
    StatusLineNC       = { fg = c.fg3, bg = c.bg0 },
    TabLine            = { fg = c.fg2, bg = c.bg2 },
    TabLineFill        = { bg = c.bg0 },
    TabLineSel         = { fg = c.bg1, bg = c.fg3 },
    Title              = { fg = c.syntax.func, bold = conf.bold },
    Visual             = { bg = c.sel0 },
    VisualNOS          = { link = "Visual" },
    WarningMsg         = { fg = c.diag.warn },
    Whitespace         = { fg = c.bg3 },
    WildMenu           = { link = "Pmenu" },
    WinBar             = { fg = c.fg3, bg = trans and "NONE" or c.bg1, bold = conf.bold },
    WinBarNC           = { fg = c.fg3, bg = trans and "NONE" or c.bg1, bold = conf.bold },
    qfLineNr           = { link = "LineNr" },
    qfFileName         = { link = "Directory" },
    qfError            = { fg = c.diag.error },
  }

  return hl
end

return M
