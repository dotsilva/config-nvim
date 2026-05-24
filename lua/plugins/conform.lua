return {
  'stevearc/conform.nvim',
  event = { 'BufWritePre' },
  cmd = { 'ConformInfo' },
  keys = {
    {
      '<leader>f',
      function() require('conform').format { async = true, lsp_format = 'fallback' } end,
      mode = '',
      desc = '[F]ormat buffer',
    },
  },
  opts = {
    notify_on_error = false,
    format_on_save = {
      timeout_ms = 500,
      lsp_format = 'fallback',
    },
    formatters_by_ft = {
      -- c = { 'clangd' },
      css = { 'biome' }, -- working
      dosini = { 'taplo' }, -- working
      -- html = { 'biome' }, -- need-to-enable-manually? maybe not, remind dosini
      javascript = { 'biome' }, -- working
      json = { 'biome' }, -- working
      jsonc = { 'biome' }, -- working
      lua = { 'stylua' }, -- working
      markdown = { 'mdformat' }, -- working
      -- odin = { 'ols' },
      qml = { 'qmlls' },
      sh = { 'shfmt' }, -- working
      sql = { 'sql_formatter' }, -- working --ver sqlfluff and sqruff
      toml = { 'taplo' }, -- working
    },
  },
}
