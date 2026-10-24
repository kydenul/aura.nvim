local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local c = conf.colors
  local trans = conf.transparent

  -- Panel backgrounds (floats, popup menu, status/tab lines, folds) are dropped when transparent.
  local function panel(color) return not trans and color or nil end

  -- stylua: ignore
  local hl = {
    ColorColumn        = { bg = c.bg2 },
    -- Groups missing from aura: original vague colors
    debugPC            = { fg = "#141415", bg = "#cdcdcd" },
    debugBreakpoint    = { fg = "#141415", bg = "#90a0b5" },
    MsgSeparator       = { fg = "#e8b589", bg = panel("#252530"), bold = conf.bold },
    StatusLineTerm     = { fg = "#cdcdcd", bg = panel("#1c1c24") },
    StatusLineTermNC   = { fg = "#606079" },
    Conceal            = { fg = c.bg4 },
    Cursor             = { fg = c.bg1, bg = c.palette.pink.base },
    lCursor            = { link = "Cursor" },
    CursorIM           = { link = "Cursor" },
    CursorColumn       = { link = "CursorLine" },
    CursorLine         = { bg = c.bg3 },
    CursorLineNr       = { fg = c.palette.pink.base, bold = conf.bold },
    Directory          = { fg = c.syntax.func },
    EndOfBuffer        = { fg = c.bg1 },
    ErrorMsg           = { fg = c.diag.error },
    OkMsg              = { fg = c.diag.ok },
    FloatBorder        = { fg = c.fg3 },
    FloatTitle         = { fg = c.syntax.func, bold = conf.bold },
    FloatShadow        = { bg = panel(c.bg0) },
    FloatShadowThrough = { bg = panel(c.bg0) },
    WinSeparator       = { fg = c.fg3 },
    VertSplit          = { link = "WinSeparator" },
    Folded             = { fg = c.fg3, bg = panel(c.bg2) },
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
    NormalNC           = { fg = c.fg1, bg = trans and "NONE" or conf.dim_inactive and c.bg0 or c.bg1 },
    NormalFloat        = { fg = c.fg1, bg = panel(c.bg0) },
    Pmenu              = { fg = c.fg1, bg = panel(c.sel0) },
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
    -- Statusline colors follow gruvbox's Airline theme (third_party/gruvbox/autoload/airline/themes)
    StatusLine         = { fg = "#a89984", bg = panel("#3c3836") },
    StatusLineNC       = { fg = "#7c6f64", bg = panel("#3c3836") },
    TabLine            = { fg = c.fg2, bg = panel(c.bg2) },
    TabLineFill        = { bg = panel(c.bg0) },
    TabLineSel         = { fg = c.bg1, bg = c.fg3 },
    Title              = { fg = c.syntax.func, bold = conf.bold },
    Visual             = { bg = c.sel0 },
    VisualNOS          = { link = "Visual" },
    WarningMsg         = { fg = c.diag.warn },
    Whitespace         = { fg = c.bg3 },
    WildMenu           = { link = "Pmenu" },
    WinBar             = { fg = c.fg3, bg = trans and "NONE" or c.bg1, bold = conf.bold },
    WinBarNC           = { fg = c.fg3, bg = trans and "NONE" or conf.dim_inactive and c.bg0 or c.bg1, bold = conf.bold },
    qfLineNr           = { link = "LineNr" },
    qfFileName         = { link = "Directory" },
    qfError            = { fg = c.diag.error },
  }

  return hl
end

return M
