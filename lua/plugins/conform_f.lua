do
    vim.pack.add { 'https://github.com/stevearc/conform.nvim' }
    require('conform').setup {

        format_on_save = function(bufnr)
            -- you can specify filetypes to autoformat on save here:
            local enabled_filetypes = {
                c = true,
                css = true,
                dosini = true,
                html = true,
                javascript = true,
                json = true,
                jsonc = true,
                lua = true,
                markdown = true,
                odin = true,
                sh = true,
                sql = true,
                toml = true,
            }

            if enabled_filetypes[vim.bo[bufnr].filetype] then
                return { timeout_ms = 1000 }
            else
                return nil
            end
        end,

        formatters_by_ft = {
            -- module - source:platform= package_name
            -- biome - pacman:pc= biome, pkg:termux = biome2
            -- stylua - luarocks:termux= stylua
            -- odinfmt - mason:= ols
            c = { 'clang-format' },
            css = { 'biome' },
            dosini = { 'taplo' },
            html = { 'superhtml' },
            javascript = { 'biome' },
            json = { 'biome' },
            jsonc = { 'biome' },
            lua = { 'stylua' },
            markdown = { 'mdformat', 'injected' }, -- injected handles code blocks to their own formatters
            odin = { 'odinfmt' },
            sh = { 'shfmt' },
            sql = { 'sqlfluff' },
            toml = { 'taplo' },
        },

        formatters = {
            sqlfluff = {
                cwd = false,
                args = {
                    'format',
                    '--templater',
                    'raw',
                    '--dialect',
                    'sqlite',
                    '-',
                },
            },
        },
    }

    vim.keymap.set(
        { 'n', 'v' },
        '<leader>f',
        function() require('conform').format { async = true } end,
        { desc = '[F]ormat buffer' }
    )
end
