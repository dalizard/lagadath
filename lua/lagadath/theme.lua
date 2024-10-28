local blend = require('lagadath.util').blend
local p = require('lagadath.palette')

local M = {}

function M.get()
  local theme = {
    ColorColumn = { bg = p.overlay },
    Conceal = { bg = p.none },
    CurSearch = { link = 'IncSearch' },
    CursorColumn = { bg = p.highlight_low },
    CursorLine = { bg = p.highlight_low },
    CursorLineNr = { fg = p.text },
    DarkenedPanel = { bg = p.surface },
    DarkenedStatusline = { bg = p.surface },
    DiffAdd = { bg = blend(p.rose, p.base, 0.2) },
    DiffChange = { bg = p.overlay },
    DiffDelete = { bg = blend(p.pine, p.base, 0.2) },
    DiffText = { bg = blend(p.rose, p.base, 0.2) },
    Directory = { fg = p.foam, bg = p.none },
    ErrorMsg = { fg = p.love, style = 'bold' },
    FloatBorder = { fg = p.highlight_med },
    FloatTitle = { fg = p.muted },
    FoldColumn = { fg = p.muted },
    Folded = { fg = p.text, bg = p.surface },
    IncSearch = { fg = p.base, bg = p.rose },
    LineNr = { fg = p.muted },
    MatchParen = { fg = p.text, bg = p.highlight_med },
    ModeMsg = { fg = p.subtle },
    MoreMsg = { fg = p.iris },
    NonText = { fg = p.muted },
    Normal = { fg = p.text, bg = p.base },
    NormalFloat = { fg = p.love, bg = blend(p.highlight_med, p.base, 0.2) },
    NormalNC = { fg = p.text, bg = p.base },
    NvimInternalError = { fg = '#ffffff', bg = p.love },
    Pmenu = { fg = p.text, bg = blend(p.highlight_low, p.base, 0.3) },
    PmenuSbar = { bg = p.highlight_low },
    PmenuSel = { fg = p.love, bg = blend(p.highlight_low, p.base, 1) },
    PmenuThumb = { bg = p.highlight_med },
    Question = { fg = p.highlight_high },
    RedrawDebugClear = { fg = '#ffffff', bg = p.gold },
    RedrawDebugComposed = { fg = '#ffffff', bg = p.pine },
    RedrawDebugRecompose = { fg = '#ffffff', bg = p.love },
    Search = { bg = p.highlight_med },
    SignColumn = { fg = p.text, bg = p.base },
    SpecialKey = { fg = p.foam },
    SpellBad = { sp = p.subtle, style = 'undercurl' },
    SpellCap = { sp = p.subtle, style = 'undercurl' },
    SpellLocal = { sp = p.subtle, style = 'undercurl' },
    SpellRare = { sp = p.subtle, style = 'undercurl' },
    StatusLine = { fg = p.subtle, bg = p.surface },
    StatusLineNC = { fg = p.muted, bg = p.base },
    StatusLineTerm = { link = 'StatusLine' },
    StatusLineTermNC = { link = 'StatusLineNC' },
    TabLine = { fg = p.subtle, bg = p.surface },
    TabLineFill = { bg = p.surface },
    TabLineSel = { fg = p.text, bg = p.overlay },
    Title = { fg = p.text },
    VertSplit = { fg = p.highlight_med },
    Visual = { bg = p.highlight_med },
    WarningMsg = { fg = p.gold },
    WildMenu = { link = 'IncSearch' },
    diffAdded = { link = 'DiffAdd' },
    diffChanged = { link = 'DiffChange' },
    diffRemoved = { link = 'DiffDelete' },

    Boolean = { fg = p.rose },
    Character = { fg = p.gold },
    Comment = { fg = p.highlight_high, style = 'italic' },
    Conditional = { fg = p.pine },
    Constant = { fg = p.gold },
    Debug = { fg = p.rose },
    Define = { fg = p.iris },
    Delimiter = { fg = p.subtle },
    Error = { fg = p.love },
    Exception = { fg = p.pine },
    Float = { fg = p.gold },
    Function = { fg = p.rose },
    Identifier = { fg = p.foam },
    Include = { fg = p.iris },
    Keyword = { fg = p.pine },
    Label = { fg = p.foam },
    Macro = { fg = p.iris },
    Number = { fg = p.gold },
    Operator = { fg = p.love },
    PreCondit = { fg = p.iris },
    PreProc = { fg = p.subtle },
    Repeat = { fg = p.pine },
    Special = { fg = p.love },
    SpecialChar = { fg = p.rose },
    SpecialComment = { fg = p.iris },
    Statement = { fg = p.pine },
    StorageClass = { fg = p.foam },
    String = { fg = p.gold },
    Structure = { fg = p.foam },
    Tag = { fg = p.rose },
    Todo = { fg = p.iris },
    Type = { fg = p.foam },
    Typedef = { fg = p.foam },
    Underlined = { style = 'underline' },

    htmlArg = { fg = p.iris },
    htmlBold = { style = 'bold' },
    htmlEndTag = { fg = p.subtle },
    htmlH1 = { fg = p.iris, style = 'bold' },
    htmlH2 = { fg = p.foam, style = 'bold' },
    htmlH3 = { fg = p.rose, style = 'bold' },
    htmlH4 = { fg = p.gold, style = 'bold' },
    htmlH5 = { fg = p.pine, style = 'bold' },
    htmlItalic = { style = 'italic' },
    htmlLink = { fg = p.iris },
    htmlTag = { fg = p.subtle },
    htmlTagN = { fg = p.text },
    htmlTagName = { fg = p.foam },

    markdownDelimiter = { fg = p.subtle },
    markdownH1 = { fg = p.iris, style = 'bold' },
    markdownH1Delimiter = { link = 'markdownH1' },
    markdownH2 = { fg = p.foam, style = 'bold' },
    markdownH2Delimiter = { link = 'markdownH2' },
    markdownH3 = { fg = p.rose, style = 'bold' },
    markdownH3Delimiter = { link = 'markdownH3' },
    markdownH4 = { fg = p.gold, style = 'bold' },
    markdownH4Delimiter = { link = 'markdownH4' },
    markdownH5 = { fg = p.pine, style = 'bold' },
    markdownH5Delimiter = { link = 'markdownH5' },
    markdownH6 = { fg = p.foam, style = 'bold' },
    markdownH6Delimiter = { link = 'markdownH6' },
    markdownLinkText = { fg = p.iris, style = 'underline' },
    markdownUrl = { link = 'markdownLinkText' },

    mkdCode = { fg = p.foam, style = 'italic' },
    mkdCodeDelimiter = { fg = p.rose },
    mkdCodeEnd = { fg = p.foam },
    mkdCodeStart = { fg = p.foam },
    mkdFootnotes = { fg = p.foam },
    mkdID = { fg = p.foam, style = 'underline' },
    mkdInlineURL = { fg = p.iris, style = 'underline' },
    mkdLink = { link = 'mkdInlineURL' },
    mkdLinkDef = { link = 'mkdInlineURL' },
    mkdListItemLine = { fg = p.text },
    mkdRule = { fg = p.subtle },
    mkdURL = { link = 'mkdInlineURL' },

    DiagnosticError = { fg = p.pine },
    DiagnosticHint = { fg = p.iris },
    DiagnosticInfo = { fg = p.foam },
    DiagnosticWarn = { fg = p.gold },
    DiagnosticDefaultError = { fg = p.love },
    DiagnosticDefaultHint = { fg = p.iris },
    DiagnosticDefaultInfo = { fg = p.foam },
    DiagnosticDefaultWarn = { fg = p.gold },
    DiagnosticFloatingError = { fg = p.pine },
    DiagnosticFloatingHint = { fg = p.text },
    DiagnosticFloatingInfo = { fg = p.foam },
    DiagnosticFloatingWarn = { fg = p.gold },
    DiagnosticSignError = { fg = blend(p.base, p.pine, 0.4) },
    DiagnosticSignHint = { fg = blend(p.base, p.iris, 0.4) },
    DiagnosticSignInfo = { fg = blend(p.base, p.foam, 0.4) },
    DiagnosticSignWarn = { fg = blend(p.base, p.gold, 0.4) },
    DiagnosticStatusLineError = { fg = p.love, bg = p.surface },
    DiagnosticStatusLineHint = { fg = p.iris, bg = p.surface },
    DiagnosticStatusLineInfo = { fg = p.foam, bg = p.surface },
    DiagnosticStatusLineWarn = { fg = p.gold, bg = p.surface },
    DiagnosticUnderlineError = { sp = p.love, style = 'undercurl' },
    DiagnosticUnderlineHint = { sp = p.iris, style = 'undercurl' },
    DiagnosticUnderlineInfo = { sp = p.foam, style = 'undercurl' },
    DiagnosticUnderlineWarn = { sp = p.gold, style = 'undercurl' },
    DiagnosticVirtualTextError = { fg = blend(p.base, p.love, 0.7) },
    DiagnosticVirtualTextHint = { fg = blend(p.base, p.iris, 0.7) },
    DiagnosticVirtualTextInfo = { fg = blend(p.base, p.foam, 0.7) },
    DiagnosticVirtualTextWarn = { fg = blend(p.base, p.gold, 0.7) },

    -- healthcheck
    healthError = { fg = p.love },
    healthSuccess = { fg = p.foam },
    healthWarning = { fg = p.gold },

    -- Treesitter

    ---- Identifiers
    ['@variable'] = { fg = p.text, style = 'italic' },
    ['@variable.builtin'] = { link = 'Special' },
    ['@variable.parameter'] = { link = 'Identifier' },
    ['@variable.parameter.builtin'] = { link = 'Identifier' },
    ['@variable.member'] = { link = '@variable' },

    ['@constant'] = { link = 'Constant' },
    ['@constant.builtin'] = { link = 'Special' },
    ['@constant.macro'] = { link = 'Define' },

    ['@module'] = { link = 'Include' },
    ['@module.builtin'] = { link = 'Function' },
    ['@label'] = { link = 'Label' },

    ---- Literals
    ['@string'] = { link = 'String' },
    ['@string.documentation'] = { link = 'String' },
    ['@string.escape'] = { link = 'SpecialChar' },
    ['@string.regexp'] = { link = 'String' },
    ['@string.special'] = { link = 'SpecialChar' },
    ['@string.special.symbol'] = { link = 'String' },
    ['@string.special.url'] = { link = 'String' },
    ['@string.special.path'] = { link = 'String' },

    ['@character'] = { link = 'Character' },
    ['@character.special'] = { link = 'SpecialChar' },

    ['@boolean'] = { link = 'Boolean' },
    ['@number'] = { link = 'Number' },
    ['@number.float'] = { link = 'Float' },

    ---- Types
    ['@type'] = { link = 'Type' },
    ['@type.builtin'] = { link = 'Type' },
    ['@type.definition'] = { link = 'Typedef' },

    ['@attribute'] = { link = 'PreProc' },
    ['@attribute.builtin'] = { link = 'PreProc' },
    ['@property'] = { link = 'Identifier' },

    ---- Functions
    ['@function'] = { link = 'Function' },
    ['@function.builtin'] = { link = 'Special' },
    ['@function.call'] = { link = 'Function' },
    ['@function.macro'] = { link = 'Macro' },

    ['@function.method'] = { link = 'Function' },
    ['@function.method.call'] = { link = 'Function' },

    ['@constructor'] = { link = 'Special' },
    ['@operator'] = { link = 'Operator' },

    ---- Keywords
    ['@keyword'] = { link = 'Keyword' },
    ['@keyword.coroutine'] = { link = 'Keyword' },
    ['@keyword.function'] = { link = 'Keyword' },
    ['@keyword.operator'] = { fg = p.subtle },
    ['@keyword.import'] = { fg = p.subtle },
    ['@keyword.type'] = { fg = p.subtle },
    ['@keyword.modifier'] = { fg = p.subtle },
    ['@keyword.repeat'] = { fg = p.subtle },
    ['@keyword.return'] = { link = 'Keyword' },
    ['@keyword.debug'] = { link = 'Keyword' },
    ['@keyword.exception'] = { link = 'Keyword' },

    ['@keyword.conditional'] = { link = 'Keyword' },
    ['@keyword.conditional.ternary'] = { link = 'Keyword' },

    ['@keyword.directive'] = { link = 'Keyword' },
    ['@keyword.directive.define'] = { link = 'Keyword' },

    ---- Punctuation
    ['@punctuation.delimiter'] = { link = 'Delimiter' },
    ['@punctuation.bracket'] = { link = 'Delimiter' },
    ['@punctuation.special'] = { link = 'Delimiter' },

    ---- Comments
    ['@comment'] = { link = 'Comment' },
    ['@comment.documentation'] = { link = 'Comment' },

    ['@comment.error'] = { link = 'Comment' },
    ['@comment.warning'] = { link = 'Comment' },
    ['@comment.todo'] = { link = 'Comment' },
    ['@comment.note'] = { link = 'Comment' },

    ---- Markup
    ['@markup.strong'] = { fg = p.text, bold = true },
    ['@markup.italic'] = { fg = p.text, italic = true },
    ['@markup.strikethrough'] = { fg = p.text, strikethrough = true },
    ['@markup.underline'] = { fg =  p.text, underline = true },

    ['@markup.heading'] = { fg = p.text },
    ['@markup.heading.1'] = { fg = p.text },
    ['@markup.heading.2'] = { fg = p.text },
    ['@markup.heading.3'] = { fg = p.text },
    ['@markup.heading.4'] = { fg = p.text },
    ['@markup.heading.5'] = { fg = p.text },
    ['@markup.heading.6'] = { fg = p.text },

    ['@markup.quote'] = { fg = p.text },
    ['@markup.math'] = { fg = p.text },

    ['@markup.link'] = { fg = p.text },
    ['@markup.link.label'] = { fg = p.text },
    ['@markup.link.url'] = { fg = p.text },

    ['@markup.raw'] = { fg = p.text },
    ['@markup.raw.block'] = { fg = p.text },

    ['@markup.list'] = { fg = p.text },
    ['@markup.list.checked'] = { fg = p.text },
    ['@markup.list.unchecked'] = { fg = p.text },

    ['@diff.plus'] = { fg = p.text },
    ['@diff.minus'] = { fg = p.text },
    ['@diff.delta'] = { fg = p.text },

    ['@tag'] = { link = 'Tag' },
    ['@tag.builtin'] = { link = 'Identifier' },
    ['@tag.attribute'] = { link = 'Identifier' },
    ['@tag.delimiter'] = { link = 'Delimiter' },

    ---- Non-highlight capture
    ['@none'] = { bg = 'NONE', fg = 'NONE' },
    ['@conceal'] = { bg = 'NONE', fg = 'NONE' },

    ['@spell'] = { bg = 'NONE', fg = 'NONE' },
    ['@nospell'] = { bg = 'NONE', fg = 'NONE' },

    -- vim.lsp.buf.document_highlight()
    LspReferenceText = { bg = p.highlight_med },
    LspReferenceRead = { bg = p.highlight_med },
    LspReferenceWrite = { bg = p.highlight_med },

    -- lsp-highlight-codelens
    LspCodeLens = { fg = p.subtle },                  -- virtual text of code lens
    LspCodeLensSeparator = { fg = p.highlight_high }, -- separator between two or more code lens

    -- lewis6991/gitsigns.nvim
    GitSignsAdd = { fg = p.rose },
    GitSignsChange = { fg = p.gold },
    GitSignsDelete = { fg = p.subtle },
    SignAdd = { link = 'GitSignsAdd' },
    SignChange = { link = 'GitSignsChange' },
    SignDelete = { link = 'GitSignsDelete' },

    -- kyazdani42/nvim-tree.lua
    NvimTreeEmptyFolderName = { fg = p.muted },
    NvimTreeFileDeleted = { fg = p.love },
    NvimTreeFileDirty = { fg = p.rose },
    NvimTreeFileMerge = { fg = p.iris },
    NvimTreeFileNew = { fg = p.foam },
    NvimTreeFileRenamed = { fg = p.pine },
    NvimTreeFileStaged = { fg = p.iris },
    NvimTreeFolderIcon = { fg = p.subtle },
    NvimTreeFolderName = { fg = p.foam },
    NvimTreeGitDeleted = { fg = p.love },
    NvimTreeGitDirty = { fg = p.rose },
    NvimTreeGitIgnored = { fg = p.muted },
    NvimTreeGitMerge = { fg = p.iris },
    NvimTreeGitNew = { fg = p.foam },
    NvimTreeGitRenamed = { fg = p.pine },
    NvimTreeGitStaged = { fg = p.iris },
    NvimTreeImageFile = { fg = p.text },
    NvimTreeNormal = { fg = p.text },
    NvimTreeOpenedFile = { fg = p.text, bg = p.highlight_med },
    NvimTreeOpenedFolderName = { link = 'NvimTreeFolderName' },
    NvimTreeRootFolder = { fg = p.iris },
    NvimTreeSpecialFile = { link = 'NvimTreeNormal' },
    NvimTreeWindowPicker = { fg = p.base, bg = p.iris },

    -- folke/which-key.nvim
    WhichKey = { fg = p.iris },
    WhichKeyDesc = { fg = p.gold },
    WhichKeyFloat = { bg = p.surface },
    WhichKeyGroup = { fg = p.foam },
    WhichKeySeparator = { fg = p.subtle },
    WhichKeyValue = { fg = p.rose },

    -- luka-reineke/indent-blankline.nvim
    IndentBlanklineChar = { fg = p.muted },

    -- hrsh7th/nvim-cmp
    CmpItemAbbr = { fg = p.text },
    CmpItemAbbrDeprecated = { fg = p.subtle, style = 'strikethrough' },
    CmpItemAbbrMatch = { fg = p.text, style = 'bold' },
    CmpItemAbbrMatchFuzzy = { fg = p.text, style = 'bold' },
    CmpItemKind = { fg = blend(p.base, p.subtle, 0.5) },
    CmpItemKindClass = { fg = p.gold },
    CmpItemKindFunction = { fg = p.iris },
    CmpItemKindInterface = { fg = p.gold },
    CmpItemKindMethod = { fg = p.iris },
    CmpItemKindSnippet = { fg = p.iris },
    CmpItemKindVariable = { fg = p.foam },
    CmpFloatBorder = { fg = p.highlight_med },

    -- nvim-telescope/telescope.nvim
    TelescopeBorder = { fg = p.highlight_med },
    TelescopeMatching = { fg = p.subtle },
    TelescopeNormal = { fg = p.text },
    TelescopePromptNormal = { fg = p.text },
    TelescopePromptPrefix = { fg = p.subtle },
    TelescopeSelection = { fg = p.foam, bg = p.highlight_low },
    TelescopeSelectionCaret = { fg = p.rose, bg = p.overlay },
    TelescopeTitle = { fg = p.text },

    -- rcarriga/nvim-notify
    NotifyDEBUGBorder = { fg = p.muted },
    NotifyDEBUGIcon = { link = 'NotifyDEBUGBorder' },
    NotifyDEBUGTitle = { link = 'NotifyDEBUGBorder' },
    NotifyERRORBorder = { fg = p.love },
    NotifyERRORIcon = { link = 'NotifyERRORBorder' },
    NotifyERRORTitle = { link = 'NotifyERRORBorder' },
    NotifyINFOBorder = { fg = p.foam },
    NotifyINFOIcon = { link = 'NotifyINFOBorder' },
    NotifyINFOTitle = { link = 'NotifyINFOBorder' },
    NotifyTRACEBorder = { fg = p.iris },
    NotifyTRACEIcon = { link = 'NotifyTRACEBorder' },
    NotifyTRACETitle = { link = 'NotifyTRACEBorder' },
    NotifyWARNBorder = { fg = p.gold },
    NotifyWARNIcon = { link = 'NotifyWARNBorder' },
    NotifyWARNTitle = { link = 'NotifyWARNBorder' },
  }

  -- Terminal
  vim.g.terminal_color_0 = p.overlay -- black
  vim.g.terminal_color_8 = p.subtle  -- bright black
  vim.g.terminal_color_1 = p.pine    -- red
  vim.g.terminal_color_9 = p.pine    -- bright red
  vim.g.terminal_color_2 = p.rose    -- green
  vim.g.terminal_color_10 = p.rose   -- bright green
  vim.g.terminal_color_3 = p.gold    -- yellow
  vim.g.terminal_color_11 = p.gold   -- bright yellow
  vim.g.terminal_color_4 = p.foam    -- blue
  vim.g.terminal_color_12 = p.foam   -- bright blue
  vim.g.terminal_color_5 = p.iris    -- magenta
  vim.g.terminal_color_13 = p.iris   -- bright magenta
  vim.g.terminal_color_6 = p.aqua    -- cyan
  vim.g.terminal_color_14 = p.aqua   -- bright cyan
  vim.g.terminal_color_7 = p.text    -- white
  vim.g.terminal_color_15 = p.text   -- bright white

  return theme
end

return M
