do
	vim.pack.add({
		{ src = "https://github.com/nvim-mini/mini.diff", version = "stable" },
	})
	require("mini.diff").setup({

		view = {
			style = "sign",
			signs = { add = "+", change = "~", delete = "_" },
		},
	})
	vim.keymap.set("n", "<leader>gd", function()
		require("mini.diff").toggle_overlay()
	end, { desc = "Toggle git diff overlay" })
end
