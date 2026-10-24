-- This file defines all the types for the colorscheme's config.
-- It is kept separate from `internal.lua` so that `require("aura").setup({})`
-- does not trigger "missing required fields" warnings from the LSP.

---@class AuraColorscheme.Shade
---@field base? string
---@field bright? string
---@field dim? string

---@class AuraColorscheme.colors
---@field bg0? string
---@field bg1? string
---@field bg2? string
---@field bg3? string
---@field bg4? string
---@field fg0? string
---@field fg1? string
---@field fg2? string
---@field fg3? string
---@field sel0? string
---@field sel1? string
---@field palette? table<"black"|"red"|"green"|"yellow"|"blue"|"magenta"|"cyan"|"white"|"orange"|"pink", AuraColorscheme.Shade>
---@field syntax? table<string, string>
---@field diag? table<"error"|"warn"|"info"|"hint"|"ok", string>
---@field diag_bg? table<"error"|"warn"|"info"|"hint"|"ok", string>
---@field diff? table<"add"|"delete"|"change"|"text", string>
---@field git? table<"add"|"removed"|"changed"|"conflict"|"ignored", string>

---@class AuraColorscheme.Config
---@field transparent? boolean
---@field bold? boolean
---@field italic? boolean
---@field dim_inactive? boolean
---@field terminal_colors? boolean
---@field compile? boolean
---@field colors? AuraColorscheme.colors
---@field on_highlights? fun(highlights: table<string, vim.api.keyset.highlight>, colors: AuraColorscheme.InternalConfig.colors)

---@type AuraColorscheme.Config | fun():AuraColorscheme.Config | nil
vim.g.aura_colorscheme = vim.g.aura_colorscheme
