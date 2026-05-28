return {
    'nvim-mini/mini.diff',
    event = { 'BufReadPre', 'BufNewFile' },
    keys = {
        {
            '<leader>gd',
            function() require('mini.diff').toggle_overlay() end,
            desc = 'Toggle git diff overlay',
        },
    },
    opts = {
        view = {
            style = 'sign',
            signs = { add = '+', change = '~', delete = '_' },
        },
    },
    config = function(_, opts) require('mini.diff').setup(opts) end,
}
