return {
  {
    'mason-org/mason.nvim',
    opts = { ui = { border = 'double' } },
  },
  {
    'WhoIsSethDaniel/mason-tool-installer.nvim',
    config = function()
      local ensure_installed = {
        'clang-format', -- c
        'cpplint', -- c
        'biome', -- css, javascript, json, jsonc
        'htmlhint', -- html
        'htmlbeautifier', -- html
        'luacheck', -- lua
        'mdformat', -- markdown
        'ols', -- odin
        'qmlls', -- qml
        'shfmt', -- bash
        'shellcheck', -- bash
        'sql_formatter', -- sql
        'stylua', -- lua
        'taplo', -- toml, ini
        'tree-sitter-cli', -- required by nvim-treesitter
      }

      require('mason-tool-installer').setup { ensure_installed = ensure_installed }
    end,
  },
}
