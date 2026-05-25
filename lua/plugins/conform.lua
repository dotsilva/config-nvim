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
      c = { 'clang-format' }, -- working
      css = { 'biome' }, -- working
      dosini = { 'taplo' }, -- working
      html = { 'htmlbeautifier' }, -- working -- alt biome, but it is not plug and play neither i could make it work
      javascript = { 'biome' }, -- working
      json = { 'biome' }, -- working
      jsonc = { 'biome' }, -- working
      lua = { 'stylua' }, -- working
      markdown = { 'mdformat' }, -- working
      odin = { 'odinfmt' }, -- working
      qml = { 'qmlformat' }, -- working
      sh = { 'shfmt' }, -- working
      sql = { 'sql_formatter' }, -- working
      toml = { 'taplo' }, -- working
    },
    formatters = {
      sql_formatter = {
        args = { '-l', 'sqlite' },
      },
    },
  },
}
