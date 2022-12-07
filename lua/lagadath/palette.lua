local variants = {
  dark = {
    base = '#282828',
    surface = '#1f1d2e',
    overlay = '#26233a',
    muted = '#6e6a86',
    subtle = '#908caa',
    text = '#ebdbb2',
    love = '#fe8019',
    gold = '#f6c177',
    rose = '#83a598',
    pine = '#fb4934',
    foam = '#9ccfd8',
    iris = '#c4a7e7',
    highlight_low = '#2e2e2e',
    highlight_med = '#403d52',
    highlight_high = '#524f67',
    none = 'NONE',
  },
  light = {
    base = '#faf4ed',
    surface = '#fffaf3',
    overlay = '#f2e9e1',
    muted = '#9893a5',
    subtle = '#797593',
    text = '#575279',
    love = '#b4637a',
    gold = '#ea9d34',
    rose = '#d7827e',
    pine = '#286983',
    foam = '#56949f',
    iris = '#907aa9',
    highlight_low = '#f4ede8',
    highlight_med = '#dfdad9',
    highlight_high = '#cecacd',
    none = 'NONE',
  },
}

local palette = {}

if vim.o.background == 'light' then
  palette = variants.light
else
  palette = variants.dark
end

return palette