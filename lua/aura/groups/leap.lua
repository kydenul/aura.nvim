local M = {}

---@param conf AuraColorscheme.InternalConfig
---@return table
M.get_colors = function(conf)
  local p = conf.colors.palette

  -- stylua: ignore
  local hl = {
    LeapMatch          = { fg = p.pink.bright, bold = conf.bold },
    LeapLabel          = { fg = p.pink.bright, bold = conf.bold },
    LeapLabelPrimary   = { link = "LeapLabel" },
    LeapLabelSecondary = { fg = p.cyan.bright, bold = conf.bold },
    LeapBackdrop       = { fg = conf.colors.syntax.comment },
  }

  return hl
end

return M
