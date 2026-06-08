do
	vim.pack.add {
		{ src = 'https://github.com/nvim-mini/mini.extra', version = 'stable' },
	}
	require('mini.extra').setup {}
end
