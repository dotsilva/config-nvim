return {
    'stevearc/oil.nvim',
    dependencies = {},
    lazy = false,
    keys = {
        {
            '<leader>o',
            function() require('oil').toggle_float() end,
            desc = 'Open Oil (current folder)',
        },
    },
    opts = {
        default_file_explorer = true,
        columns = {},
        view_options = {
            show_hidden = true,
        },
    },

    -- Preview Window (Hit <C-p> inside Oil to toggle it)
    preview_win = {
        update_on_cursor_moved = true,
    },
}
