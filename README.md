# aura.nvim

A Neovim colorscheme.

## Usage

```lua
require("aura").setup({ -- optional
  transparent = false,
  bold = true,
  italic = true,
  dim_inactive = false,   -- darken non-current windows with bg0
  terminal_colors = true, -- set vim.g.terminal_color_0..15
  compile = false,        -- cache resolved highlights in stdpath("cache")/aura (see require("aura").compile())
  on_highlights = function(hl, colors) end,
  colors = {}, -- override any key of lua/aura/config/internal.lua
})
vim.cmd.colorscheme("aura")
```

Plugin highlights: blink, cmp, dashboard, flash, fzf-lua, gitsigns, illuminate, indent-blankline, lazy, leap, mini,
modes, neotest, neo-tree, notify, rainbow-delimiters, snacks, telescope, trouble, which-key, vim-better-whitespace.
The lualine theme (`theme = "auto"`) is derived from the palette.

Layout: `lua/aura/config` (palette + options), `lua/aura/groups/*` (highlight groups per plugin/area),
`highlights.lua`, `terminal.lua`.

## License

MIT.

## Acknowledgements

- [vague.nvim](https://github.com/vague-theme/vague.nvim)
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
