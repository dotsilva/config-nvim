do
    vim.pack.add {
        'https://github.com/WhoIsSethDaniel/mason-tool-installer.nvim',
    }
    local ensure_installed
    local is_termux = vim.loop.fs_stat '/data/data/com.termux'
    if is_termux then
        ensure_installed = {
            'clang-format', -- c
            'biome', -- css, javascript, json, jsonc
            -- 'luacheck', -- lua
            'mdformat', -- markdown
            'shfmt', -- bash
            'shellcheck', -- bash
            'sqlfluff', -- sql
            -- 'stylua', -- lua
            'superhtml', -- html
            'taplo', -- toml, ini
            'tree-sitter-cli', -- required by nvim-treesitter
        }
        vim.fn.jobstart({ 'pkg', 'install', 'luacheck', 'stylua' }, {
            on_exit = function(_, code)
                if code == 0 then
                    vim.notify 'installed with pkg: luacheck, stylua'
                end
            end,
        })
    else
        ensure_installed = {
            'clang-format', -- c
            'biome', -- css, javascript, json, jsonc
            'luacheck', -- lua
            'mdformat', -- markdown
            'shfmt', -- bash
            'shellcheck', -- bash
            'sqlfluff', -- sql
            'stylua', -- lua
            'superhtml', -- html
            'taplo', -- toml, ini
            'tree-sitter-cli', -- required by nvim-treesitter
        }
    end

    require('mason-tool-installer').setup {
        ensure_installed = ensure_installed,
    }
end
