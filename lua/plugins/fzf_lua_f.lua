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

-- TODO: set the keymaps for fzf-lua
-- TODO: read this: https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack
-- TODO: try this convention instead
-- vim.pack.add({ 'https://github.com/user/repo.git' })
-- to be consitent with this one bellow, so its easier to remind
-- vim.pack.del({ 'nvim-lspconfig', 'nvim-treesitter' })
-- TODO: set helpers for common vim.pack usage, such as
-- update and remove

-- keeping this here for documentation to help me set either snacks.picker or fzf-lua
--[[
do
    vim.pack.add {
        { src = 'https://github.com/nvim-mini/mini.pick', version = 'stable' },
    }
    require('mini.pick').setup {}

    vim.keymap.set(
        'n',
        '<leader>sr',
        function() require('mini.extra').pickers.oldfiles() end,
        { desc = 'Search Recent Files' }
    )

    vim.keymap.set(
        'n',
        '<leader>sf',
        function() require('mini.pick').builtin.files() end,
        { desc = 'Search Files' }
    )

    vim.keymap.set(
        'n',
        '<leader>sw',
        function() require('mini.pick').builtin.grep_live() end,
        { desc = 'Search Words' }
    )

    vim.keymap.set(
        'n',
        '<leader>sh',
        function() require('mini.pick').builtin.help() end,
        { desc = 'Search Help' }
    )
end
]]
