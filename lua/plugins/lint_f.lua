do
    vim.pack.add { 'https://github.com/mfussenegger/nvim-lint' }

    local lint = require 'lint'
    lint.linters_by_ft = {
        --commented tools need configuration
        c = { 'clangtidy' }, --system: clang, which is called as clang-tidy in cli
        css = { 'biomejs' }, --mason: biome
        html = { 'superhtml' }, --mason --alt biome, but i couldnt make it work
        javascript = { 'biomejs' }, --mason: biome
        json = { 'biomejs' }, --mason: biome
        jsonc = { 'biomejs' }, --mason: biome
        lua = { 'luacheck' }, --mason
        sh = { 'shellcheck' }, --mason
        sql = { 'sqlfluff' }, --mason
        zig = { 'zig' }, --system
    }

    local superhtml_pattern = '^([^:]+):(%d+):(%d+): (.+)$'
    local superhtml_groups = { 'file', 'lnum', 'col', 'message' }
    local superhtml_severity_map = {
        ['error'] = vim.diagnostic.severity.ERROR,
    }
    lint.linters.superhtml = {
        cmd = 'superhtml',
        stdin = false,
        args = {
            'check' --[['--syntax-only']],
        },
        stream = 'stderr',
        ignore_exitcode = true,
        parser = require('lint.parser').from_pattern(
            superhtml_pattern,
            superhtml_groups,
            superhtml_severity_map,
            {
                source = 'superhtml',
            }
        ),
    }

    lint.linters.clangtidy.args = {
        '--quiet',
        '--checks=*',
    }

    lint.linters.sqlfluff.args = {
        'lint',
        '--format',
        'json',
        '--templater',
        'raw',
        '--dialect',
        'sqlite',
        '-',
    }

    -- Create autocommand which carries out the actual linting
    -- on the specified events.
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
            -- Only run the linter in buffers that you can modify in order to
            -- avoid superfluous noise, notably within the handy LSP pop-ups that
            -- describe the hovered symbol using Markdown.
            if vim.bo.modifiable then lint.try_lint() end
        end,
    })
end
