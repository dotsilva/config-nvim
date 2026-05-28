return {
    'nvim-mini/mini.pick',
    dependencies = { 'nvim-mini/mini.extra' },
    keys = {
        {
            '<leader>sf',
            function() require('mini.pick').builtin.files() end,
            desc = 'Search Files',
        },
        {
            '<leader>sw',
            function() require('mini.pick').builtin.grep_live() end,
            desc = 'Search Words',
        },
        {
            '<leader>sc',
            function()
                require('mini.pick').builtin.grep {
                    pattern = vim.fn.expand '<cword>',
                }
            end,
            desc = 'Search Current Word',
        },
        {
            '<leader>sh',
            function() require('mini.pick').builtin.help() end,
            desc = 'Search Help',
        },
        {
            '<leader>sr',
            function() require('mini.extra').pickers.oldfiles() end,
            desc = 'Search Recent Files',
        },
        {
            '<leader>sn',
            function()
                require('mini.pick').builtin.files {
                    cwd = vim.fn.stdpath 'config',
                }
            end,
            desc = 'Search Neovim files',
        },
    },
    config = function(_, opts)
        require('mini.pick').setup(opts)
        require('mini.extra').setup()
    end,
}
