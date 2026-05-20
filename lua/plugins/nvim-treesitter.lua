return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local parsers = {
      'awk', -- w
      'bash', -- w
      'c', -- w
      'css', -- w
      'diff',
      'editorconfig', -- w
      'git_config', -- w
      'git_rebase', -- w
      'gitcommit', -- w
      'gitignore', -- w
      'gpg', -- w
      'glsl', -- w
      'html', -- w
      'html_tags',
      'http', -- w
      'hyprlang', -- w
      'ini',
      'jq', -- w
      'json', -- w
      'lua', -- w
      'luadoc', -- w
      'luap', -- w
      'markdown', -- w
      'markdown_inline', -- w
      'nginx', -- w
      'properties',
      'qmljs', -- w
      'query',
      'readline', -- w
      'regex', -- w
      'sql', -- w
      'ssh_config', -- w
      'toml', -- w
      'vim', -- w
      'vimdoc', -- w
      'xcompose',
      'zig', -- w
    }

    require('nvim-treesitter').install(parsers)
    vim.api.nvim_create_autocmd('FileType', {
      callback = function(args)
        local buf, filetype = args.buf, args.match

        local language = vim.treesitter.language.get_lang(filetype)
        if not language then return end

        if not vim.treesitter.language.add(language) then return end
        vim.treesitter.start(buf, language)

        -- vim.wo.foldexpr = 'v:lua.vim.treesitter.foldexpr()'
        -- vim.wo.foldmethod = 'expr'

        vim.bo.indentexpr = "v:lua.require'nvim-treesitter'.indentexpr()"
      end,
    })
  end,
}
