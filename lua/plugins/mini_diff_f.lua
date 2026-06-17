vim.pack.add { 'https://github.com/nvim-mini/mini.diff' }
require('mini.diff').setup {

	view = {
		style = 'sign',
		signs = { add = '+', change = '~', delete = '_' },
	},
}
vim.keymap.set(
	'n',
	'<leader>gd',
	function() require('mini.diff').toggle_overlay() end,
	{ desc = 'Diff overlay' }
)
