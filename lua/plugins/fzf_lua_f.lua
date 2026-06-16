vim.pack.add { 'https://github.com/ibhagwan/fzf-lua' }
require('fzf-lua').setup {
	winopts = {
		border = 'double',
		preview = {
			border = 'double',
		},
	},
	fzf_opts = {
		['--ansi'] = true,
	},
}

vim.keymap.set(
	'n',
	'<leader>ff',
	function() require('fzf-lua').files() end,
	{ desc = 'find' }
)
vim.keymap.set(
	'n',
	'<leader>fg',
	function() require('fzf-lua').live_grep() end,
	{ desc = 'grep' }
)
vim.keymap.set(
	'n',
	'<leader>fb',
	function() require('fzf-lua').buffers() end,
	{ desc = 'buffers' }
)
vim.keymap.set(
	'n',
	'<leader>fh',
	function() require('fzf-lua').history() end,
	{ desc = 'history' }
)
vim.keymap.set(
	'n',
	'<leader>fc',
	function() require('fzf-lua').commands() end,
	{ desc = 'commands' }
)
vim.keymap.set(
	'n',
	'<leader>fu',
	function() require('fzf-lua').undotree() end,
	{ desc = 'undotree' }
)
