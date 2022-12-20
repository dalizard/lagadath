local M = {}

M.setup = function()
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = 'lagadath'
  vim.o.termguicolors = true

  local theme = require('lagadath.theme').get()
  local util = require('lagadath.util')

  for group, color in pairs(theme) do
    util.highlight(group, color)
  end
end

return M
