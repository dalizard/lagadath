local variants = {
  dark = {
    aqua = '#689d6a',
    base = '#282828',
    foam = '#83a598',
    gold = '#f6c177',
    highlight_high = '#686868',
    highlight_low = '#333333',
    highlight_med = '#535353',
    iris = '#c4a7e7',
    love = '#fe8019',
    muted = '#4d4a5e',
    none = 'NONE',
    overlay = '#26233a',
    pine = '#fb4934',
    rose = '#b8bb26',
    subtle = '#908caa',
    surface = '#1f1d2e',
    text = '#ebdbb2',
  },
  light = {
    aqua = '#689d6a',
    base = '#faf4ed',
    foam = '#56949f',
    gold = '#ea9d34',
    highlight_high = '#cecacd',
    highlight_low = '#f4ede8',
    highlight_med = '#dfdad9',
    iris = '#907aa9',
    love = '#c35474',
    muted = '#9893a5',
    none = 'NONE',
    overlay = '#f2e9e1',
    pine = '#286983',
    rose = '#81831b',
    subtle = '#797593',
    surface = '#fffaf3',
    text = '#282828',
  },
}

local palette = {}

if vim.o.background == 'light' then
  palette = variants.light
else
  palette = variants.dark
end

return palette
