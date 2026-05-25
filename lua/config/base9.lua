vim.cmd 'hi clear'
if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end
vim.g.colors_name = 'base9'
vim.o.background = 'dark'

-- color palette
local p = {
    ground = '#1E1E1E',
    black = '#858585',
    red = '#F34E4E',
    green = '#36DB36',
    yellow = '#CFCF2A',
    blue = '#7E7EFF',
    magenta = '#E742E7',
    cyan = '#38D5D5',
    white = '#D4D4D4',
}

local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- ==========================================
-- PHASE A: TERMINAL VARIABLES
-- ==========================================
vim.g.terminal_color_0 = p.black
vim.g.terminal_color_1 = p.red
vim.g.terminal_color_2 = p.green
vim.g.terminal_color_3 = p.yellow
vim.g.terminal_color_4 = p.blue
vim.g.terminal_color_5 = p.magenta
vim.g.terminal_color_6 = p.cyan
vim.g.terminal_color_7 = p.white
vim.g.terminal_color_8 = p.black
vim.g.terminal_color_9 = p.red
vim.g.terminal_color_10 = p.green
vim.g.terminal_color_11 = p.yellow
vim.g.terminal_color_12 = p.blue
vim.g.terminal_color_13 = p.magenta
vim.g.terminal_color_14 = p.cyan
vim.g.terminal_color_15 = p.white

-- ==========================================
-- PHASE B: UI BACKGROUNDS & BORDERS
-- ==========================================
-- Base Text & Backgrounds
hi('Normal', { fg = p.white, bg = p.ground })
hi('NormalFloat', { fg = p.black, bg = p.ground })
hi('NormalNC', { fg = p.black, bg = p.ground })
hi('ColorColumn', { bg = p.ground })
hi('CursorColumn', { bg = p.ground })
hi(
    'CursorLine',
    { bg = 'NONE', bold = true, underdotted = true, sp = p.magenta }
)
hi(
    'CursorLineNr',
    {
        fg = p.magenta,
        bg = p.ground,
        bold = true,
        italic = true,
        underdotted = true,
        sp = p.magenta,
    }
)
hi('LineNr', { fg = p.black, bg = p.ground, italic = true })
hi('SignColumn', { fg = p.black, bg = p.ground })
hi('FoldColumn', { fg = p.black, bg = p.ground })
hi('VertSplit', { fg = p.ground, bg = p.ground })
hi('WinSeparator', { fg = p.ground, bg = p.ground })
hi('EndOfBuffer', { fg = p.ground, bg = p.ground })
hi('Pmenu', { fg = p.black, bg = p.ground })
hi('PmenuSel', { fg = p.ground, bg = p.cyan, bold = true })
hi('PmenuSbar', { bg = p.ground })
hi('PmenuThumb', { bg = p.black })
hi('StatusLine', { fg = p.black, bg = p.ground, bold = true })
hi('StatusLineNC', { fg = p.black, bg = p.ground })
hi('TabLine', { fg = p.black, bg = p.ground })
hi('TabLineFill', { fg = p.black, bg = p.ground })
hi('TabLineSel', { fg = p.black, bg = p.ground, bold = true })
hi('Title', { fg = p.blue, bold = true })
hi('Visual', { bg = p.cyan, fg = p.ground })
hi('Search', { fg = p.ground, bg = p.magenta })
hi('IncSearch', { fg = p.ground, bg = p.magenta })
hi('MatchParen', { fg = p.ground, bg = p.black, bold = true })
hi('Directory', { fg = p.black, bold = true })
hi('MsgArea', { fg = p.black, bg = p.ground })

-- Confirmations, Warnings, and Prompts
hi('Question', { fg = p.yellow, bold = true })
hi('WarningMsg', { fg = p.yellow, bold = true })
hi('MoreMsg', { fg = p.yellow, bold = true })
hi('ErrorMsg', { fg = p.red, bold = true, bg = p.ground })

-- Strict Blue Borders
hi('FloatBorder', { fg = p.blue, bg = p.ground, bold = true })
hi('FloatTitle', { fg = p.blue, bg = p.ground, bold = true })

-- ==========================================
-- PHASE C: DIAGNOSTICS & VCS
-- ==========================================
-- Diagnostics Text
hi('DiagnosticError', { fg = p.red, bg = p.ground, bold = true, italic = true })
hi(
    'DiagnosticWarn',
    { fg = p.yellow, bg = p.ground, bold = true, italic = true }
)
hi(
    'DiagnosticInfo',
    { fg = p.black, bg = p.ground, bold = true, italic = true }
)
hi(
    'DiagnosticHint',
    { fg = p.black, bg = p.ground, bold = true, italic = true }
)

hi(
    'DiagnosticUnderlineError',
    { sp = p.red, undercurl = true, bold = true, italic = true }
)
hi(
    'DiagnosticUnderlineWarn',
    { sp = p.yellow, undercurl = true, bold = true, italic = true }
)
hi(
    'DiagnosticUnderlineInfo',
    { sp = p.magenta, undercurl = true, bold = true, italic = true }
)
hi(
    'DiagnosticUnderlineHint',
    { sp = p.magenta, undercurl = true, bold = true, italic = true }
)

hi(
    'DiagnosticVirtualTextError',
    { fg = p.red, bg = p.ground, bold = true, italic = true }
)
hi(
    'DiagnosticVirtualTextWarn',
    { fg = p.yellow, bg = p.ground, bold = true, italic = true }
)
hi(
    'DiagnosticVirtualTextInfo',
    { fg = p.black, bg = p.ground, bold = true, italic = true }
)
hi(
    'DiagnosticVirtualTextHint',
    { fg = p.black, bg = p.ground, bold = true, italic = true }
)

-- Lsp References
hi('LspReferenceText', { bold = true, underdouble = true, sp = p.magenta })
hi('LspReferenceRead', { bold = true, underdouble = true, sp = p.magenta })
hi('LspReferenceWrite', { bold = true, underdashed = true, sp = p.magenta })

-- Diagnostics
hi('DiagnosticUnderlineError', { sp = p.red, undercurl = true })
hi('DiagnosticUnderlineWarn', { sp = p.yellow, undercurl = true })
hi('DiagnosticUnderlineInfo', { sp = p.black, undercurl = true })
hi('DiagnosticUnderlineHint', { sp = p.black, undercurl = true })
hi('DiagnosticUnnecessary', { sp = p.black, undercurl = true })

-- Diff States
hi('DiffAdd', { fg = p.green, bg = p.ground, bold = true, italic = true })
hi('DiffChange', { fg = p.yellow, bg = p.ground, bold = true, italic = true })
hi('DiffDelete', { fg = p.red, bg = p.ground, bold = true, italic = true })
hi('DiffText', { fg = p.ground, bg = p.yellow, bold = true, italic = true })

-- ==========================================
-- PHASE D: TREESITTER
-- ==========================================
-- green - working
hi('@function.call', { fg = p.green })
hi('@method.call', { fg = p.green })
hi('@operator', { fg = p.green })

-- cyan referencing
hi('@variable', { fg = p.cyan })
hi('@variable.parameter', { fg = p.cyan })
hi('@variable.member', { fg = p.cyan })
hi('@property', { fg = p.cyan })
hi('@module', { fg = p.cyan })

-- blue - defining
hi('@function', { fg = p.blue })
hi('@method', { fg = p.blue })
hi('@type', { fg = p.blue })
hi('@type.builtin', { fg = p.blue })
hi('@keyword.function', { fg = p.blue })
hi('@punctuation.bracket', { fg = p.blue })
hi('@punctuation.delimiter', { fg = p.blue })

-- yellow - routing
hi('@keyword.conditional', { fg = p.yellow })
hi('@keyword.repeat', { fg = p.yellow })
hi('@keyword.exception', { fg = p.yellow })
hi('@keyword.directive', { fg = p.yellow })
hi('@keyword.return', { fg = p.yellow })

-- magenta - signaling
hi('@constant.builtin', { fg = p.magenta })
hi('@character.special', { fg = p.magenta })
hi('@string.escape', { fg = p.magenta })
hi('@boolean', { fg = p.magenta })
hi('@number', { fg = p.magenta })
hi('@float', { fg = p.magenta })

-- white - saying
hi('@string', { fg = p.white })
hi('@character', { fg = p.white })

-- black - commenting
hi('@comment', { fg = p.black, italic = true })
hi('@comment.documentation', { fg = p.black, bold = true, italic = true })
hi('@spell', { fg = p.black, italic = true })

-- ==========================================
-- PHASE E: LEGACY SYNTAX FALLBACKS
-- ==========================================
hi('Comment', { fg = p.black, italic = true })
hi('String', { fg = p.white })
hi('Number', { fg = p.magenta })
hi('Boolean', { fg = p.magenta })
hi('Constant', { fg = p.magenta })
hi('Identifier', { fg = p.cyan })
hi('Function', { fg = p.green })
hi('Statement', { fg = p.blue })
hi('Conditional', { fg = p.yellow })
hi('Repeat', { fg = p.yellow })
hi('Operator', { fg = p.green })
hi('Keyword', { fg = p.blue })
hi('Exception', { fg = p.yellow })
hi('PreProc', { fg = p.red })
hi('Type', { fg = p.blue })
hi('Special', { fg = p.magenta })
hi('Delimiter', { fg = p.blue })
hi('Error', { fg = p.red, bold = true })
hi('Todo', { fg = p.cyan, bold = true })

-- ==========================================
-- PHASE F: PLUGINS
-- ==========================================
hi('DashboardSeparator', { fg = p.black })
hi('DashboardVerse', { fg = p.black, bold = true })
hi('DashboardTitle', { fg = p.blue, bold = true })
hi('DashboardPath', { fg = p.cyan })

hi('FidgetTitle', { fg = p.blue, bg = p.ground, bold = true })
hi('FidgetTask', { fg = p.black, bg = p.ground })

-- Mini Diff
hi('MiniDiffSignAdd', { fg = p.green, bg = p.ground, bold = true })
hi('MiniDiffSignChange', { fg = p.yellow, bg = p.ground, bold = true })
hi('MiniDiffSignDelete', { fg = p.red, bg = p.ground, bold = true })

-- Oil File Explorer (Strict Blue Borders)
hi('OilNormal', { fg = p.black, bg = p.ground })
hi('OilBorder', { fg = p.blue })
hi('OilTitle', { fg = p.blue, bg = p.ground, bold = true })

-- Mini Pick (Strict Blue Borders)
hi('MiniPickNormal', { fg = p.black, bg = p.ground })
hi('MiniPickBorder', { fg = p.blue })
hi('MiniPickPrompt', { fg = p.black, bg = p.ground })
hi('MiniPickMatchCurrent', { bg = 'NONE', underdotted = true, sp = p.cyan })
hi('MiniPickMatchRanges', { fg = p.cyan, bold = true })

-- Mini Statusline
hi(
    'MiniStatuslineModeNormal',
    { fg = p.ground, bg = p.black, bold = true, italic = true }
)
hi(
    'MiniStatuslineModeInsert',
    { fg = p.ground, bg = p.white, bold = true, italic = true }
)
hi(
    'MiniStatuslineModeVisual',
    { fg = p.ground, bg = p.cyan, bold = true, italic = true }
)
hi(
    'MiniStatuslineModeCommand',
    { fg = p.ground, bg = p.green, bold = true, italic = true }
)
hi(
    'MiniStatuslineModeReplace',
    { fg = p.ground, bg = p.magenta, bold = true, italic = true }
)
hi(
    'MiniStatuslineModeOther',
    { fg = p.ground, bg = p.black, bold = true, italic = true }
)
hi('MiniStatuslineDevinfo', { fg = p.black, bg = p.ground })
hi('MiniStatuslineFilename', { fg = p.black, bg = p.ground })
hi('MiniStatuslineLsp', { fg = p.magenta, bg = p.ground, bold = true })

-- Mini Clue (Strict Blue Borders)
hi('MiniClueNormal', { fg = p.black, bg = p.ground })
hi('MiniClueBorder', { fg = p.blue, bg = p.ground })
hi('MiniClueTitle', { fg = p.blue, bold = true })
hi('MiniClueNextKey', { fg = p.black })

-- Mini Indentscope
hi('MiniIndentscopeSymbol', { fg = p.black })
hi('MiniIndentscopeSymbolOff', { fg = p.ground })

-- Blink CMP (Strict Blue Borders)
hi('BlinkCmpMenu', { fg = p.black, bg = p.ground })
hi('BlinkCmpMenuBorder', { fg = p.blue, bg = p.ground })
hi(
    'BlinkCmpMenuSelection',
    { bg = 'NONE', bold = true, underdotted = true, sp = p.cyan }
)
hi('BlinkCmpLabel', { fg = p.black })
hi('BlinkCmpLabelMatch', { fg = p.magenta, bold = true })
hi('BlinkCmpKind', { fg = p.black })
hi('BlinkCmpDocBorder', { fg = p.blue, bg = p.ground })
hi('BlinkCmpSignatureHelpBorder', { fg = p.blue, bg = p.ground })

-- ==========================================
-- Lazy.nvim
-- ==========================================
hi('LazyNormal', { fg = p.black, bg = p.ground })
hi('LazyH1', { fg = p.blue, bold = true })
hi('LazyH2', { fg = p.blue, bold = true })
hi('LazyButton', { fg = p.black, bg = p.ground })
hi(
    'LazyButtonActive',
    { fg = p.cyan, bg = 'NONE', bold = true, underdotted = true, sp = p.cyan }
)
hi('LazyDir', { fg = p.cyan })
hi('LazyUrl', { fg = p.cyan })
hi('LazyCommit', { fg = p.cyan })
hi('LazyProgressDone', { fg = p.green })
hi('LazyProgressTodo', { fg = p.black })
hi('LazyTaskError', { fg = p.red, bold = true })
hi('LazyTaskOutput', { fg = p.white })
hi('LazyDimmed', { fg = p.black, italic = true })
hi('LazyProp', { fg = p.cyan })
hi('LazyValue', { fg = p.white })
hi('LazySpecial', { fg = p.magenta })
hi('LazyReasonCmd', { fg = p.green })
hi('LazyReasonEvent', { fg = p.yellow })
hi('LazyReasonFt', { fg = p.blue })
hi('LazyReasonKeys', { fg = p.white })
hi('LazyReasonPlugin', { fg = p.blue })
hi('LazyReasonSource', { fg = p.cyan })
hi('LazyReasonStart', { fg = p.green })

-- ==========================================
-- Mason.nvim
-- ==========================================
hi('MasonNormal', { fg = p.black, bg = p.ground })
hi('MasonHeader', { fg = p.blue, bold = true }) -- Blue titles
hi('MasonHeaderSecondary', { fg = p.blue, bold = true })
hi('MasonHeading', { fg = p.blue, bold = true })
hi('MasonHighlight', { fg = p.cyan }) -- Focus
hi('MasonHighlightBlock', { fg = p.ground, bg = p.cyan })
hi('MasonHighlightBlockBold', { fg = p.ground, bg = p.cyan, bold = true })
hi('MasonHighlightSecondary', { fg = p.yellow })
hi('MasonHighlightBlockSecondary', { fg = p.ground, bg = p.yellow })
hi(
    'MasonHighlightBlockBoldSecondary',
    { fg = p.ground, bg = p.yellow, bold = true }
)
hi('MasonLink', { fg = p.cyan })
hi('MasonMuted', { fg = p.black, italic = true })
hi('MasonMutedBlock', { fg = p.black, bg = p.ground })
hi('MasonMutedBlockBold', { fg = p.black, bg = p.ground, bold = true })
hi('MasonError', { fg = p.red, bold = true }) -- Stop
hi('MasonWarning', { fg = p.yellow, bold = true }) -- Route/Warn
