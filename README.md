# aura.nvim

A Neovim colorscheme.

## Usage

```lua
require("aura").setup({ -- optional
  transparent = false,
  bold = true,
  italic = true,
  on_highlights = function(hl, colors) end,
  colors = {}, -- override any key of lua/aura/config/internal.lua
})
vim.cmd.colorscheme("aura")
```

Layout: `lua/aura/config` (palette + options), `lua/aura/groups/*` (highlight groups per plugin/area),
`highlights.lua`, `terminal.lua`.

## License

MIT.

## Acknowledgements

- [vague.nvim](https://github.com/vague-theme/vague.nvim)
- [nightfox.nvim](https://github.com/EdenEast/nightfox.nvim)
