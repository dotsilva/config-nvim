do
	vim.pack.add {
		{
			src = 'https://github.com/nvim-treesitter/nvim-treesitter',
			version = 'main',
		},
	}

	local parsers = {
		'awk',
		'bash',
		'c',
		'cmake',
		'css',
		'diff',
		'ecma',
		'editorconfig',
		'git_config',
		'gitignore',
		'gpg',
		'glsl',
		'html',
		'html_tags',
		'hyprlang',
		'ini',
		'javascript',
		'json',
		'lua',
		'luadoc',
		'luap',
		'make',
		'markdown',
		'markdown_inline',
		'odin',
		'properties',
		'readline',
		'regex',
		'sql',
		'ssh_config',
		'toml',
		'vim',
		'vimdoc',
	}

	require('nvim-treesitter').install(parsers)
	local function treesitter_try_attach(buf, language)
		-- check if a parser exists and load it
		if not vim.treesitter.language.add(language) then return end
		-- enable syntax highlighting and other treesitter features
		vim.treesitter.start(buf, language)

		-- enable treesitter based folds
		-- for more info on folds see `:help folds`
		-- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
		-- vim.wo.foldmethod = 'expr'

		-- check if treesitter indentation is available for this language, and if so enable it
		-- in case there is no indent query, the indentexpr will fallback to the vim's built in one
		local has_indent_query = vim.treesitter.query.get(language, 'indents')
			~= nil

		-- enable treesitter based indentation
		if has_indent_query then
			vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
		end
	end

	local available_parsers = require('nvim-treesitter').get_available()
	vim.api.nvim_create_autocmd('FileType', {
		callback = function(args)
			local buf, filetype = args.buf, args.match

			local language = vim.treesitter.language.get_lang(filetype)
			if not language then return end

			local installed_parsers =
				require('nvim-treesitter').get_installed 'parsers'

			if vim.tbl_contains(installed_parsers, language) then
				-- enable the parser if it is already installed
				treesitter_try_attach(buf, language)
			elseif vim.tbl_contains(available_parsers, language) then
				-- if a parser is available in nvim-treesitter,
				-- auto-install it and enable it after the installation is done
				require('nvim-treesitter')
					.install(language)
					:await(function() treesitter_try_attach(buf, language) end)
			else
				-- try to enable treesitter features in case the parser exists,
				-- but is not available from nvim-treesitter
				treesitter_try_attach(buf, language)
			end
		end,
	})
end
