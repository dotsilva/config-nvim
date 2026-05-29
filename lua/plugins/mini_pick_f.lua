do
	vim.pack.add({
		{ src = "https://github.com/nvim-mini/mini.pick", version = "stable" },
	})
	require("mini.pick").setup({})

	vim.keymap.set("n", "<leader>sr", function()
		require("mini.extra").pickers.oldfiles()
	end, { desc = "Search Recent Files" })

	vim.keymap.set("n", "<leader>sf", function()
		require("mini.pick").builtin.files()
	end, { desc = "Search Files" })

	vim.keymap.set("n", "<leader>sw", function()
		require("mini.pick").builtin.grep_live()
	end, { desc = "Search Words" })

	vim.keymap.set("n", "<leader>sh", function()
		require("mini.pick").builtin.help()
	end, { desc = "Search Help" })
end
