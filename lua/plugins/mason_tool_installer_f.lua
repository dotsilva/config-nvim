do
    vim.pack.add {
        'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
    }
    local ensure_installed
    local is_termux = vim.loop.fs_stat '/data/data/com.termux'
    if is_termux then
        ensure_installed = {
            'mdformat',
            'shfmt',
            'shellcheck',
            'sqlfluff',
            'superhtml',
            'taplo',
            'tree-sitter-cli', -- required by nvim-treesitter
        }
    else
        ensure_installed = {
            'clang-format',
            'luacheck',
            'mdformat',
            'shfmt',
            'shellcheck',
            'sqlfluff',
            'stylua',
            'superhtml',
            'taplo',
            'tree-sitter-cli', -- required by nvim-treesitter
        }
    end

    require('mason-tool-installer').setup {
        ensure_installed = ensure_installed,
    }
end
