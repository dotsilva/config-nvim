do
    vim.pack.add { 'https://github.com/mfussenegger/nvim-lint' }

    local lint = require 'lint'
    lint.linters_by_ft = {
        -- module - source:platform= package_name
        -- clangtidy - pacman:pc= clang, pkg:termux= clang
        -- biomejs - pacman:pc= biome, pkg:termux= biome2
        -- luacheck - luarocks:termux= luacheck
        c = { 'clangtidy' },
        css = { 'biomejs' },
        html = { 'superhtml' },
        javascript = { 'biomejs' },
        json = { 'biomejs' },
        jsonc = { 'biomejs' },
        lua = { 'luacheck' },
        odin = { 'odin' }, -- TODO: make it work
        sh = { 'shellcheck' },
        sql = { 'sqlfluff' },
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
            'check',
            '--syntax-only',
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

    --[[
    -- to force posix
    local function filename_or_stdin()
        local bufname = vim.api.nvim_buf_get_name(0)
        local file = vim.fn.fnameescape(vim.fn.fnamemodify(bufname, ':p'))
        if vim.bo.buftype == '' and vim.fn.filereadable(file) == 1 then
            return file
        end
        return '-'
    end
    lint.linters.shellcheck.args = {
        '--shell',
        'sh',
        '--format',
        'json1',
        filename_or_stdin,
    }
    ]]

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

    -- create autocommand which carries out the actual linting
    -- on the specified events.
    local lint_augroup = vim.api.nvim_create_augroup('lint', { clear = true })
    vim.api.nvim_create_autocmd({ 'BufEnter', 'BufWritePost', 'InsertLeave' }, {
        group = lint_augroup,
        callback = function()
            -- only run the linter in buffers that you can modify in order to
            -- avoid superfluous noise, notably within the handy lsp pop-ups that
            -- describe the hovered symbol using Markdown.
            if vim.bo.modifiable then lint.try_lint() end
        end,
    })
end
