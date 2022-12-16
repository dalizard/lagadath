local p = require('lagadath.palette')
local blend = require('lagadath.util').blend

return {
  normal = {
    a = { bg = p.highlight_low, fg = p.rose, gui = 'bold' },
    b = { bg = p.highlight_low, fg = blend(p.highlight_high, p.text, 0.5) },
    c = { bg = p.highlight_low, fg = blend(p.highlight_high, p.text, 0.5) },
    z = { bg = p.highlight_low, fg = blend(p.highlight_high, p.text, 0.5) },
  },
  insert = {
    a = { bg = p.highlight_low, fg = p.foam, gui = 'bold' },
  },
  visual = {
    a = { bg = p.highlight_low, fg = p.iris, gui = 'bold' },
  },
  replace = {
    a = { bg = p.highlight_low, fg = p.pine, gui = 'bold' },
  },
  command = {
    a = { bg = p.highlight_low, fg = p.love, gui = 'bold' },
  },
  inactive = {
    a = { bg = blend(p.highlight_low, p.base, 0.3), fg = p.highlight_high },
    b = { bg = blend(p.highlight_low, p.base, 0.3), fg = p.highlight_high },
    c = { bg = blend(p.highlight_low, p.base, 0.3), fg = p.highlight_high },
  },
}
