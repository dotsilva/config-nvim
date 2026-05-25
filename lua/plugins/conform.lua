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
      c = { 'clang-format' },
      css = { 'biome' },
      dosini = { 'taplo' },
      html = { 'htmlbeautifier' }, -- alt biome, but i couldnt make it work
      javascript = { 'biome' },
      json = { 'biome' },
      jsonc = { 'biome' },
      lua = { 'stylua' },
      markdown = { 'mdformat' },
      odin = { 'odinfmt' },
      qml = { 'qmlformat' },
      sh = { 'shfmt' },
      sql = { 'sql_formatter' },
      toml = { 'taplo' },
    },
    formatters = {
      sql_formatter = {
        args = { '-l', 'sqlite' },
      },
    },
  },
}
