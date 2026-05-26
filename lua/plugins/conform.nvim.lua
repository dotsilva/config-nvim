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
            c = { 'clang-format' },
            css = { 'biome' },
            dosini = { 'taplo' },
            html = { 'htmlbeautifier' }, --alt biome, but i couldnt make it work
            javascript = { 'biome' },
            json = { 'biome' },
            jsonc = { 'biome' },
            lua = { 'stylua' },
            markdown = { 'mdformat', 'injected' }, --injected handle code blocks to their formatters
            --odin = { 'odinfmt' },
            qml = { 'qmlformat' },
            sh = { 'shfmt' },
            --sql = { 'sql_formatter' }, --alternative formatter for sqlite
            sql = { 'sqlfluff' },
            toml = { 'taplo' },
            zig = { 'zigfmt' },
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
            --sql_formatter = {
            --    args = { '-l', 'sqlite' },
            --},
        },
    },
}
