return {
{
'mason-org/mason.nvim',
opts = { ui = { border = 'double' } },
},
{
  'WhoIsSethDaniel/mason-tool-installer.nvim',
  config = function()
    local ensure_installed = {
      'clangd', -- c
      'biome', -- css, html, json
      'luacheck', -- lua
      'mdformat', -- markdown
      'ols', -- odin
      'qmlls', -- qml
      'shfmt', -- bash
      'shellcheck', -- bash
      'sqlfluff', -- sql
      'stylua', -- lua
      'taplo', -- toml, ini
      'tree-sitter-cli', -- required for nvim-treesitter
    }

    require('mason-tool-installer').setup { ensure_installed = ensure_installed }
  end,
},
}
