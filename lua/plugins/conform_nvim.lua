return {
    'stevearc/conform.nvim',
    event = { 'BufWritePre' },
    cmd = { 'ConformInfo' },
    keys = {
        {
            '<leader>f',
            function()
                require('conform').format {
                    async = true,
                    lsp_format = 'fallback',
                }
            end,
            mode = '',
            desc = '[F]ormat buffer',
        },
    },

    opts = {
        notify_on_error = false,
        format_on_save = {
            timeout_ms = 1000,
            lsp_format = 'fallback',
        },

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
    },
}
