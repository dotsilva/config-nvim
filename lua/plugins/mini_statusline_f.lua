vim.pack.add { 'https://github.com/nvim-mini/mini.statusline' }

require('mini.statusline').setup {
	use_icons = false,
}

require('mini.statusline').section_location = function() return '%2l:%-2v' end
