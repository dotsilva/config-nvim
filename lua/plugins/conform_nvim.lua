do
    vim.pack.add { 'https://github.com/stevearc/conform.nvim' }
    require('conform').setup {
        format_on_save = function(bufnr)
            -- You can specify filetypes to autoformat on save here:
            local enabled_filetypes = {
                lua = true,
                -- python = true,
            }
            if enabled_filetypes[vim.bo[bufnr].filetype] then
                return { timeout_ms = 1000 }
            else
                return nil
            end
        end,

        formatters_by_ft = {
            c = { 'clang-format' }, --mason
            css = { 'biome' }, --mason
            dosini = { 'taplo' }, --mason
            html = { 'htmlbeautifier' }, --mason --alt biome, but i couldnt make it work
            javascript = { 'biome' }, --mason
            json = { 'biome' }, --mason
            jsonc = { 'biome' }, --mason
            lua = { 'stylua' }, --mason
            markdown = { 'mdformat', 'injected' }, --mason --injected handle code blocks to their formatters
            sh = { 'shfmt' }, --mason
            sql = { 'sqlfluff' }, --mason
            toml = { 'taplo' }, --mason
            zig = { 'zigfmt' }, --system: zig
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
