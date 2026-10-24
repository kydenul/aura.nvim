local internal_conf = require("aura.config.internal")
local M = {}

---@param user_opts? AuraColorscheme.Config
M.setup = function(user_opts)
  if user_opts then internal_conf.set(user_opts) end
end

-- SHOULD BE CALLED AFTER SETUP (unless using default colors)
M.get_palette = function() return vim.deepcopy(internal_conf.current.colors) end

--- Under the hood, |:colorscheme| is just using |:highlight GroupName ...| over every highlight group it knows about.
--- so this function is the equivalent to calling |:colorscheme| so use that instead
M._colorscheme = function()
  -- Only clear highlight groups if another colorscheme was already loaded.
  -- This improves startup time if the colorscheme is loaded in init.lua.
  if vim.g.colors_name then vim.cmd.highlight("clear") end
  vim.g.colors_name = "aura"
  vim.o.termguicolors = true
  vim.o.background = "dark"

  require("aura.highlights").set_highlights()
  require("aura.terminal").set_highlights()
end

return M
