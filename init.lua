--[[
For of Him, and through Him, and unto Him, are all things.
To Him be the glory for ever. Amen. - Romans 11:36 ASV 1901
]]

-- Enable faster startup by caching compiled Lua modules
vim.loader.enable()

-- leader keys MUST be set before anything else, or plugins bind to the wrong key
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- verify if the environment is termux
-- this can be used to set specific plugins
-- configs trough conditionals for termux
-- to avoid problems and errors
_G.is_termux = vim.loop.fs_stat '/data/data/com.termux'

-- TODO: read this: https://echasnovski.com/blog/2026-03-13-a-guide-to-vim-pack
-- TODO: set helpers for common vim.pack usage, such as
-- update and remove
-- NOTE: use this to remove plugins
-- vim.pack.del({ 'oil', 'nvim-treesitter' })
require 'config.vim_pack'
require 'config.options'
require 'config.keymaps'
require 'config.autocmds'
require 'config.health'
require 'config.tea2y'

require 'plugins.oil_f'
require 'plugins.fzf_lua_f'
require 'plugins.nvim_treesitter_f'
require 'plugins.blink_cmp_f'
require 'plugins.mason_f'
require 'plugins.mason_tool_installer_f'
require 'plugins.mini_git_f'
require 'plugins.mini_diff_f'
require 'plugins.mini_statusline_f'
require 'plugins.conform_f'
require 'plugins.lint_f'
require 'plugins.ibl_f'
require 'plugins.nvim_autopairs_f'
require 'plugins.colorizer_f'
require 'plugins.which_key_f'
