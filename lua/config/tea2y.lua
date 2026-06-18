vim.cmd 'hi clear'
if vim.fn.exists 'syntax_on' then vim.cmd 'syntax reset' end
vim.g.colors_name = 'tea2y'
vim.o.background = 'dark'

-- color palette
local t = {
	-- ground, black and white have a
	-- subtle yellowto to reduce blue
	ground = '#1E1E0F',
	black = '#858577',
	red = '#FF5050',
	green = '#36DB36',
	yellow = '#CFCF2A',
	blue = '#7E7EFF',
	magenta = '#E742E7',
	cyan = '#38D5D5',
	white = '#D4D4B4',
}

-- to easy turn on/off these options
-- for all cases
local bold_switch = true
local italic_switch = true
local udotted_switch = true
local ucurl_switch = true
-- local udouble_switch = true
-- local uline_switch = true

local function hi(group, opts) vim.api.nvim_set_hl(0, group, opts) end

-- terminal variables
vim.g.terminal_color_0 = t.black
vim.g.terminal_color_1 = t.red
vim.g.terminal_color_2 = t.green
vim.g.terminal_color_3 = t.yellow
vim.g.terminal_color_4 = t.blue
vim.g.terminal_color_5 = t.magenta
vim.g.terminal_color_6 = t.cyan
vim.g.terminal_color_7 = t.white
vim.g.terminal_color_8 = t.black
vim.g.terminal_color_9 = t.red
vim.g.terminal_color_10 = t.green
vim.g.terminal_color_11 = t.yellow
vim.g.terminal_color_12 = t.blue
vim.g.terminal_color_13 = t.magenta
vim.g.terminal_color_14 = t.cyan
vim.g.terminal_color_15 = t.white

-- base ui
-- pattern to follow: fg, bg, bold, italic, underlines
hi('Normal', { fg = t.white, bg = t.ground })
hi('NormalFloat', { fg = t.black, bg = t.ground })
hi('NormalNC', { fg = t.black, bg = t.ground })
hi('ColorColumn', { bg = t.ground })
hi('CursorColumn', { bg = t.ground })
hi('CursorLine', {
	bg = 'NONE',
	bold = bold_switch,
	underdotted = udotted_switch,
	sp = t.magenta,
})
hi('CursorLineNr', {
	fg = t.magenta,
	bg = t.ground,
	bold = bold_switch,

	underdotted = udotted_switch,
	sp = t.magenta,
})
hi('LineNr', { fg = t.black, bg = t.ground })
hi('SignColumn', { fg = t.black, bg = t.ground })
hi('FoldColumn', { fg = t.black, bg = t.ground })
hi('VertSplit', { fg = t.ground, bg = t.ground })
hi('WinSeparator', { fg = t.ground, bg = t.ground })
hi('EndOfBuffer', { fg = t.ground, bg = t.ground })
hi('Pmenu', { fg = t.black, bg = t.ground })
hi('PmenuSel', { fg = t.ground, bg = t.cyan, bold = bold_switch })
hi('PmenuSbar', { bg = t.ground })
hi('PmenuThumb', { bg = t.black })
hi('StatusLine', { fg = t.black, bg = t.ground, bold = bold_switch })
hi('StatusLineNC', { fg = t.black, bg = t.ground })
hi('TabLine', { fg = t.black, bg = t.ground })
hi('TabLineFill', { fg = t.black, bg = t.ground })
hi('TabLineSel', { fg = t.black, bg = t.ground, bold = bold_switch })
hi('Title', { fg = t.blue, bold = bold_switch })
hi('Visual', { bg = t.cyan, fg = t.ground })
hi('Search', { fg = t.ground, bg = t.magenta })
hi('IncSearch', { fg = t.ground, bg = t.magenta })
hi('MatchParen', { fg = t.ground, bg = t.black, bold = bold_switch })
hi('Directory', { fg = t.black, bold = bold_switch })
hi('MsgArea', { fg = t.black, bg = t.ground })

-- confirmations, warnings, and prompts
hi('Question', { fg = t.yellow, bold = bold_switch })
hi('WarningMsg', { fg = t.yellow, bold = bold_switch })
hi('MoreMsg', { fg = t.yellow, bold = bold_switch })
hi('ErrorMsg', { fg = t.red, bold = bold_switch, bg = t.ground })

-- blue borders
hi('FloatBorder', { fg = t.blue, bg = t.ground, bold = bold_switch })
hi('FloatTitle', { fg = t.blue, bg = t.ground, bold = bold_switch })

-- diagnostics
hi('DiagnosticError', { fg = t.red, bg = t.ground, bold = bold_switch })
hi('DiagnosticWarn', { fg = t.yellow, bg = t.ground, bold = bold_switch })
hi('DiagnosticInfo', { fg = t.black, bg = t.ground, bold = bold_switch })
hi('DiagnosticHint', { fg = t.black, bg = t.ground, bold = bold_switch })

hi(
	'DiagnosticUnderlineError',
	{ sp = t.red, undercurl = ucurl_switch, bold = bold_switch }
)
hi(
	'DiagnosticUnderlineWarn',
	{ sp = t.yellow, undercurl = ucurl_switch, bold = bold_switch }
)
hi('DiagnosticUnderlineInfo', {
	sp = t.magenta,
	undercurl = ucurl_switch,
	bold = bold_switch,
})
hi('DiagnosticUnderlineHint', {
	sp = t.magenta,
	undercurl = ucurl_switch,
	bold = bold_switch,
})
hi(
	'DiagnosticVirtualTextError',
	{ fg = t.red, bg = t.ground, bold = bold_switch }
)
hi(
	'DiagnosticVirtualTextWarn',
	{ fg = t.yellow, bg = t.ground, bold = bold_switch }
)
hi(
	'DiagnosticVirtualTextInfo',
	{ fg = t.black, bg = t.ground, bold = bold_switch }
)
hi(
	'DiagnosticVirtualTextHint',
	{ fg = t.black, bg = t.ground, bold = bold_switch }
)
hi('DiagnosticUnderlineError', { sp = t.red, undercurl = ucurl_switch })
hi('DiagnosticUnderlineWarn', { sp = t.yellow, undercurl = ucurl_switch })
hi('DiagnosticUnderlineInfo', { sp = t.black, undercurl = ucurl_switch })
hi('DiagnosticUnderlineHint', { sp = t.black, undercurl = ucurl_switch })
hi('DiagnosticUnnecessary', { sp = t.black, undercurl = ucurl_switch })

-- Diff States
hi('DiffAdd', { fg = t.green, bg = t.ground, bold = bold_switch })
hi('DiffChange', { fg = t.yellow, bg = t.ground, bold = bold_switch })
hi('DiffDelete', { fg = t.red, bg = t.ground, bold = bold_switch })
hi('DiffText', { fg = t.ground, bg = t.yellow, bold = bold_switch })

-- treesitter
-- green - working
hi('@function.call', { fg = t.green })
hi('@method.call', { fg = t.green })
hi('@operator', { fg = t.green })

-- cyan referencing
hi('@variable', { fg = t.cyan })
hi('@variable.parameter', { fg = t.cyan })
hi('@variable.member', { fg = t.cyan })
hi('@property', { fg = t.cyan })
hi('@module', { fg = t.cyan })

-- blue - defining
hi('@function', { fg = t.blue })
hi('@method', { fg = t.blue })
hi('@type', { fg = t.blue })
hi('@type.builtin', { fg = t.blue })
hi('@keyword.function', { fg = t.blue })
hi('@punctuation.bracket', { fg = t.blue })
hi('@punctuation.delimiter', { fg = t.blue })

-- yellow - routing
hi('@keyword.conditional', { fg = t.yellow })
hi('@keyword.repeat', { fg = t.yellow })
hi('@keyword.exception', { fg = t.yellow })
hi('@keyword.directive', { fg = t.yellow })
hi('@keyword.return', { fg = t.yellow })

-- magenta - signaling
hi('@constant.builtin', { fg = t.magenta })
hi('@character.special', { fg = t.magenta })
hi('@string.escape', { fg = t.magenta })
hi('@boolean', { fg = t.magenta })
hi('@number', { fg = t.magenta })
hi('@float', { fg = t.magenta })

-- white - saying
hi('@string', { fg = t.white })
hi('@character', { fg = t.white })

-- black - commenting
hi('@comment', { fg = t.black, italic = italic_switch })
hi(
	'@comment.documentation',
	{ fg = t.black, bold = bold_switch, italic = italic_switch }
)
hi('@spell', { fg = t.black, italic = italic_switch })

-- legacy syntax fallbacks
hi('Comment', { fg = t.black, italic = italic_switch })
hi('String', { fg = t.white })
hi('Number', { fg = t.magenta })
hi('Boolean', { fg = t.magenta })
hi('Constant', { fg = t.magenta })
hi('Identifier', { fg = t.cyan })
hi('Function', { fg = t.green })
hi('Statement', { fg = t.blue })
hi('Conditional', { fg = t.yellow })
hi('Repeat', { fg = t.yellow })
hi('Operator', { fg = t.green })
hi('Keyword', { fg = t.blue })
hi('Exception', { fg = t.yellow })
hi('PreProc', { fg = t.red })
hi('Type', { fg = t.blue })
hi('Special', { fg = t.magenta })
hi('Delimiter', { fg = t.blue })
hi('Error', { fg = t.red, bold = bold_switch })
hi('Todo', { fg = t.cyan, bold = bold_switch })

-- plugins
-- mini.diff
hi('MiniDiffSignAdd', { fg = t.green, bg = t.ground, bold = bold_switch })
hi('MiniDiffSignChange', { fg = t.yellow, bg = t.ground, bold = bold_switch })
hi('MiniDiffSignDelete', { fg = t.red, bg = t.ground, bold = bold_switch })

-- oil
hi('OilNormal', { fg = t.black, bg = t.ground })
hi('OilBorder', { fg = t.blue })
hi('OilTitle', { fg = t.blue, bg = t.ground, bold = bold_switch })

-- mini.statusline
hi(
	'MiniStatuslineModeNormal',
	{ fg = t.ground, bg = t.black, bold = bold_switch }
)
hi(
	'MiniStatuslineModeInsert',
	{ fg = t.ground, bg = t.white, bold = bold_switch }
)
hi(
	'MiniStatuslineModeVisual',
	{ fg = t.ground, bg = t.cyan, bold = bold_switch }
)
hi(
	'MiniStatuslineModeCommand',
	{ fg = t.ground, bg = t.green, bold = bold_switch }
)
hi(
	'MiniStatuslineModeReplace',
	{ fg = t.ground, bg = t.magenta, bold = bold_switch }
)
hi(
	'MiniStatuslineModeOther',
	{ fg = t.ground, bg = t.black, bold = bold_switch }
)
hi('MiniStatuslineDevinfo', { fg = t.black, bg = t.ground })
hi('MiniStatuslineFilename', { fg = t.black, bg = t.ground })

-- blink
hi('BlinkCmpMenu', { fg = t.black, bg = t.ground })
hi('BlinkCmpMenuBorder', { fg = t.blue, bg = t.ground })
hi('BlinkCmpMenuSelection', {
	bg = 'NONE',
	bold = bold_switch,
	underdotted = udotted_switch,
	sp = t.cyan,
})
hi('BlinkCmpLabel', { fg = t.black })
hi('BlinkCmpLabelMatch', { fg = t.magenta, bold = bold_switch })
hi('BlinkCmpKind', { fg = t.black })
hi('BlinkCmpDocBorder', { fg = t.blue, bg = t.ground })
hi('BlinkCmpSignatureHelpBorder', { fg = t.blue, bg = t.ground })

-- mason
hi('MasonNormal', { fg = t.black, bg = t.ground })
hi('MasonHeader', { fg = t.blue, bold = bold_switch })
hi('MasonHeaderSecondary', { fg = t.blue, bold = bold_switch })
hi('MasonHeading', { fg = t.blue, bold = bold_switch })
hi('MasonHighlight', { fg = t.cyan })
hi('MasonHighlightBlock', { fg = t.ground, bg = t.cyan })
hi(
	'MasonHighlightBlockBold',
	{ fg = t.ground, bg = t.cyan, bold = bold_switch }
)
hi('MasonHighlightSecondary', { fg = t.yellow })
hi('MasonHighlightBlockSecondary', { fg = t.ground, bg = t.yellow })
hi(
	'MasonHighlightBlockBoldSecondary',
	{ fg = t.ground, bg = t.yellow, bold = bold_switch }
)
hi('MasonLink', { fg = t.cyan })
hi('MasonMuted', { fg = t.black })
hi('MasonMutedBlock', { fg = t.black, bg = t.ground })
hi('MasonMutedBlockBold', { fg = t.black, bg = t.ground, bold = bold_switch })
hi('MasonError', { fg = t.red, bold = bold_switch })
hi('MasonWarning', { fg = t.yellow, bold = bold_switch })
