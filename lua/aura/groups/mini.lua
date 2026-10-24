local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local k = conf.colors
  local p = k.palette

  -- stylua: ignore
  local hl = {
    MiniAnimateCursor      = { reverse = true, nocombine = true },
    MiniAnimateNormalFloat = { link = "NormalFloat" },

    MiniClueBorder              = { link = "FloatBorder" },
    MiniClueDescGroup           = { link = "DiagnosticFloatingWarn" },
    MiniClueDescSingle          = { link = "NormalFloat" },
    MiniClueNextKey             = { link = "DiagnosticFloatingHint" },
    MiniClueNextKeyWithPostkeys = { link = "DiagnosticFloatingError" },
    MiniClueSeparator           = { link = "DiagnosticFloatingInfo" },
    MiniClueTitle               = { link = "FloatTitle" },

    MiniCompletionActiveParameter = { underline = true },

    MiniCursorword        = { link = "LspReferenceText" },
    MiniCursorwordCurrent = { link = "LspReferenceText" },

    MiniDepsChangeAdded   = { link = "diffAdded" },
    MiniDepsChangeRemoved = { link = "diffRemoved" },
    MiniDepsHint          = { link = "DiagnosticHint" },
    MiniDepsInfo          = { link = "DiagnosticInfo" },
    MiniDepsMsgBreaking   = { link = "DiagnosticWarn" },
    MiniDepsPlaceholder   = { link = "Comment" },
    MiniDepsTitle         = { link = "Title" },
    MiniDepsTitleError    = { fg = k.bg0, bg = p.red.base },
    MiniDepsTitleSame     = { link = "DiffText" },
    MiniDepsTitleUpdate   = { fg = k.bg0, bg = p.green.base },

    MiniDiffSignAdd     = { fg = k.git.add },
    MiniDiffSignChange  = { fg = k.git.changed },
    MiniDiffSignDelete  = { fg = k.git.removed },
    MiniDiffOverAdd     = { link = "DiffAdd" },
    MiniDiffOverChange  = { link = "DiffText" },
    MiniDiffOverContext = { link = "DiffChange" },
    MiniDiffOverDelete  = { link = "DiffDelete"  },

    MiniFilesBorder         = { link = "FloatBorder" },
    MiniFilesBorderModified = { link = "DiagnosticFloatingWarn" },
    MiniFilesCursorLine     = { link = "CursorLine" },
    MiniFilesDirectory      = { link = "Directory"   },
    MiniFilesFile           = { fg = k.fg1 },
    MiniFilesNormal         = { link = "NormalFloat" },
    MiniFilesTitle          = { link = "FloatTitle"  },
    MiniFilesTitleFocused   = { fg = k.fg1, bold = conf.bold },

    MiniHipatternsFixme = { fg = k.bg0, bg = k.diag.error, bold = conf.bold },
    MiniHipatternsHack  = { fg = k.bg0, bg = k.diag.warn, bold = conf.bold },
    MiniHipatternsNote  = { fg = k.bg0, bg = k.diag.info, bold = conf.bold },
    MiniHipatternsTodo  = { fg = k.bg0, bg = k.diag.hint, bold = conf.bold },

    MiniIconsAzure  = { fg = p.blue.bright },
    MiniIconsBlue   = { fg = p.blue.base },
    MiniIconsCyan   = { fg = p.cyan.base },
    MiniIconsGreen  = { fg = p.green.base },
    MiniIconsGrey   = { fg = k.fg0 },
    MiniIconsOrange = { fg = p.orange.base },
    MiniIconsPurple = { fg = p.magenta.base },
    MiniIconsRed    = { fg = p.red.base },
    MiniIconsYellow = { fg = p.yellow.base },

    MiniIndentscopeSymbol = { link = "Delimiter" },
    MiniIndentscopePrefix = { nocombine = true }, -- Make it invisible

    MiniJump = { fg = k.bg0, bg = p.magenta.base },

    MiniJump2dDim        = { link = "Comment" },
    MiniJump2dSpot       = { fg = p.cyan.base, bold = conf.bold },
    MiniJump2dSpotAhead  = { fg = p.blue.dim, bg = k.bg0, nocombine = true },
    MiniJump2dSpotUnique = { fg = p.yellow.base, bold = conf.bold  },

    MiniMapNormal       = { link = "NormalFloat" },
    MiniMapSymbolCount  = { link = "Special" },
    MiniMapSymbolLine   = { link = "Title" },
    MiniMapSymbolView   = { link = "Delimiter" },

    MiniNotifyBorder = { link = "FloatBorder" },
    MiniNotifyNormal = { link = "NormalFloat" },
    MiniNotifyTitle  = { link = "FloatTitle"  },

    MiniOperatorsExchangeFrom = { link = "IncSearch" },

    MiniPickBorder        = { link = "FloatBorder" },
    MiniPickBorderBusy    = { link = "DiagnosticFloatingWarn" },
    MiniPickBorderText    = { link = "FloatTitle" },
    MiniPickIconDirectory = { link = "Directory" },
    MiniPickIconFile      = { link = "MiniPickNormal" },
    MiniPickHeader        = { link = "DiagnosticFloatingHint" },
    MiniPickMatchCurrent  = { link = "CursorLine" },
    MiniPickMatchMarked   = { link = "Visual" },
    MiniPickMatchRanges   = { link = "DiagnosticFloatingHint" },
    MiniPickNormal        = { link = "NormalFloat" },
    MiniPickPreviewLine   = { link = "CursorLine" },
    MiniPickPreviewRegion = { link = "IncSearch" },
    MiniPickPrompt        = { link = "DiagnosticFloatingInfo" },

    MiniStarterCurrent    = { nocombine = true },
    MiniStarterFooter     = { fg = k.syntax.const, italic = conf.italic },
    MiniStarterHeader     = { link = "Title" },
    MiniStarterInactive   = { link = "Comment" },
    MiniStarterItem       = { link = "Normal" },
    MiniStarterItemBullet = { fg = k.fg3 },
    MiniStarterItemPrefix = { fg = p.pink.base },
    MiniStarterSection    = { fg = p.red.base },
    MiniStarterQuery      = { fg = p.green.base },

    MiniStatuslineDevinfo     = { fg = k.fg2, bg = k.bg2 },
    MiniStatuslineFileinfo    = { fg = k.fg2, bg = k.bg2 },
    MiniStatuslineFilename    = { link = "StatusLine" },
    MiniStatuslineInactive    = { link = "StatusLineNC" },
    MiniStatuslineModeCommand = { fg = k.bg0, bg = p.yellow.base,  bold = conf.bold },
    MiniStatuslineModeInsert  = { fg = k.bg0, bg = p.green.base,   bold = conf.bold },
    MiniStatuslineModeNormal  = { fg = k.bg0, bg = p.cyan.base,    bold = conf.bold },
    MiniStatuslineModeOther   = { fg = k.bg0, bg = p.blue.base,    bold = conf.bold },
    MiniStatuslineModeReplace = { fg = k.bg0, bg = p.red.base,     bold = conf.bold },
    MiniStatuslineModeVisual  = { fg = k.bg0, bg = p.magenta.base, bold = conf.bold },

    MiniSurround = { link = "IncSearch" },

    MiniTablineCurrent         = { fg = k.fg2, bg = k.bg4, bold = conf.bold },
    MiniTablineFill            = { link = "TabLineFill" },
    MiniTablineHidden          = { fg = k.fg3, bg = k.bg2 },
    MiniTablineModifiedCurrent = { fg = k.bg4, bg = k.fg2, bold = conf.bold },
    MiniTablineModifiedHidden  = { fg = k.bg2, bg = k.fg3 },
    MiniTablineModifiedVisible = { fg = k.bg2, bg = k.fg2 },
    MiniTablineTabpagesection  = { fg = k.fg1, bg = k.bg1, bold = conf.bold },
    MiniTablineVisible         = { fg = k.fg2, bg = k.bg2 },

    MiniTestEmphasis = { bold = conf.bold },
    MiniTestFail     = { fg = p.red.base,   bold = conf.bold },
    MiniTestPass     = { fg = p.green.base, bold = conf.bold },

    MiniTrailspace = { bg = p.red.base },
  }

  return hl
end
return M
