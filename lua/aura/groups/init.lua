local curr_internal_conf = require("aura.config.internal").current

---@param group string
local function init(group) return require("aura.groups." .. group).get_colors(curr_internal_conf) end

return {
  blink = init("blink"),
  cmp = init("cmp"),
  common = init("common"),
  dashboard = init("dashboard"),
  diff = init("diff"),
  flash = init("flash"),
  fzf_lua = init("fzf-lua"),
  gitsigns = init("gitsigns"),
  html = init("html"),
  illuminate = init("illuminate"),
  indent_blankline = init("indent-blankline"),
  lazy = init("lazy"),
  leap = init("leap"),
  lsp_native = init("lsp-native"),
  lsp_plugin = init("lsp-plugin"),
  mini = init("mini"),
  modes = init("modes"),
  neotest = init("neotest"),
  neotree = init("neotree"),
  notify = init("notify"),
  rainbow_delimiters = init("rainbow-delimiters"),
  snacks_input = init("snacks-input"),
  snacks_picker = init("snacks-picker"),
  syntax = init("syntax"),
  telescope = init("telescope"),
  treesitter = init("treesitter"),
  trouble = init("trouble"),
  vim_better_whitespace = init("vim-better-whitespace"),
  which_key = init("which-key"),
}
