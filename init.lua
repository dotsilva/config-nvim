--[[
For of Him, and through Him, and unto Him, are all things.
To Him be the glory for ever. Amen. - Romans 11:36 ASV 1901
]]

do
    -- Enable faster startup by caching compiled Lua modules
    vim.loader.enable()

    -- leader keys MUST be set before anything else, or plugins bind to the wrong key
    vim.g.mapleader = ' '
    vim.g.maplocalleader = ' '

    -- config
    require 'config.vim_pack'
    require 'config.options'
    require 'config.keymaps'
    require 'config.autocmds'
    require 'config.health'
    require 'config.base9'

    -- plugins
    require 'plugins.oil_nvim'
    require 'plugins.nvim_treesitter'
    require 'plugins.blink_cmp'
    require 'plugins.mason_nvim'
    require 'plugins.mason_tool_installer_nvim'
    require 'plugins.mini_diff'
    require 'plugins.mini_statusline'
    require 'plugins.conform_nvim'
    require 'plugins.nvim_lint'
    require 'plugins.which_key'
end
