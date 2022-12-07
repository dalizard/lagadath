local M = {}

local config = {
  bold_vert_split = false,
  dark_variant = 'main',
  dim_nc_background = false,
  disable_background = false,
  disable_float_background = false,
  disable_italics = false,

  groups = {
    background = 'base',
    panel = 'surface',
    border = 'highlight_med',
    comment = 'muted',
    link = 'iris',
    punctuation = 'muted',

    error = 'love',
    hint = 'iris',
    info = 'foam',
    warn = 'gold',

    git_add = 'foam',
    git_change = 'rose',
    git_delete = 'love',
    git_dirty = 'rose',
    git_ignore = 'muted',
    git_merge = 'iris',
    git_rename = 'pine',
    git_stage = 'iris',
    git_text = 'rose',

    headings = {
      h1 = 'iris',
      h2 = 'foam',
      h3 = 'rose',
      h4 = 'gold',
      h5 = 'pine',
      h6 = 'foam',
    },
  },
  highlight_groups = {},
}


-- Default configs
M.config = {
  bold = true,
  italic = true,
  strikethrough = true,
}

M.setup = function(config)
  M.config = vim.tbl_extend("force", M.config, config or {})
end

M.load = function()
  if vim.version().minor < 7 then
    vim.notify_once("gruvbox.nvim: you must use neovim 0.7 or higher")
    return
  end

  -- reset colors
  if vim.g.colors_name then
    vim.cmd("hi clear")
  end

  vim.g.colors_name = "lagadath"
  vim.o.termguicolors = true

  --local groups = require("lagadath.groups").setup()

  ---- add highlights
  --for group, settings in pairs(groups) do
  --  vim.api.nvim_set_hl(0, group, settings)
  --end
  local theme = require('lagadath.theme').get(config)
  local util = require('lagadath.util')


  -- Set theme highlights
  for group, color in pairs(theme) do
    -- Skip highlight group if user overrides
    if config.highlight_groups[group] == nil then
      util.highlight(group, color)
    end
  end

  -- Set user highlights
  for group, color in pairs(config.highlight_groups) do
    util.highlight(group, color)
  end
end

return M
