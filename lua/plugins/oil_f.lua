do
	vim.pack.add({ "https://github.com/stevearc/oil.nvim" })
	require("oil").setup({
		default_file_explorer = true,
		columns = {},
		view_options = {
			show_hidden = true,
		},

		-- Preview Window (Hit <C-p> inside Oil to toggle it)
		preview_win = {
			update_on_cursor_moved = true,
		},
	})
	vim.keymap.set("n", "<leader>o", function()
		require("oil").toggle_float()
	end, { desc = "Open Oil (current folder)" })
end
