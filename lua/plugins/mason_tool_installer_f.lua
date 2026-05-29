do
	vim.pack.add({
		"https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim",
	})
	local ensure_installed = {
		--'clangd', --c
		"clang-format", --c
		"biome", --css, javascript, json, jsonc
		"htmlhint", --html
		"htmlbeautifier", --html
		"luacheck", --lua
		"mdformat", --markdown
		"shfmt", --bash
		"shellcheck", --bash
		"sqlfluff", --sql
		"stylua", --lua
		"taplo", --toml, ini
		"tree-sitter-cli", --required by nvim-treesitter
		--'zls', --zig
	}

	require("mason-tool-installer").setup({
		ensure_installed = ensure_installed,
	})
end
