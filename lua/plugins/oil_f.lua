do
	vim.pack.add { 'https://github.com/stevearc/oil.nvim' }
	require('oil').setup {
		default_file_explorer = true,
		view_options = {
			show_hidden = true,
		},
	}

	vim.keymap.set(
		'n',
		'<leader>o',
		function() require('oil').toggle_float() end,
		{ desc = 'Open Oil (current folder)' }
	)

	-- oil as greeter when using nvim without any arguments
	if vim.fn.argc() == 0 then
		vim.api.nvim_create_autocmd('VimEnter', {
			callback = function()
				vim.schedule(function() require('oil').open() end)
			end,
		})
	end
end
