vim.pack.add { 'https://github.com/ibhagwan/fzf-lua' }
require('fzf-lua').setup {}

vim.keymap.set(
    'n',
    '<leader>ff',
    function() require('fzf-lua').files() end,
    { desc = 'find' }
)
vim.keymap.set(
    'n',
    '<leader>fg',
    function() require('fzf-lua').live_grep() end,
    { desc = 'grep' }
)
vim.keymap.set(
    'n',
    '<leader>fr',
    function() require('fzf-lua').oldfiles() end,
    { desc = 'recent' }
)
vim.keymap.set(
    'n',
    '<leader>fb',
    function() require('fzf-lua').buffers() end,
    { desc = 'buffers' }
)
