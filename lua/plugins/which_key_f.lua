do
    vim.pack.add { 'https://github.com/folke/which-key.nvim' }
    require('which-key').setup {
        -- delay between pressing a key and opening which-key (milliseconds)
        delay = 0,
    }

    vim.keymap.set(
        'n',
        '<leader>?',
        function() require('which-key').show { global = false } end,
        { desc = 'Buffer Local Keymaps (which-key)' }
    )
end
