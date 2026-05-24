return {
  'nvim-treesitter/nvim-treesitter',
  lazy = false,
  build = ':TSUpdate',
  branch = 'main',
  config = function()
    local parsers = {
      'awk',
      'bash', -- ok
      'c', -- ok
      'cmake',
      'css', -- ok
      'diff',
      'editorconfig',
      'git_config',
      'git_rebase',
      'gitcommit',
      'gitignore',
      'gpg',
      'glsl',
      'html', -- ok
      'html_tags',
      'http',
      'hyprlang', -- ok
      'ini', -- ok
      'jq',
      'json', -- ok
      'lua', -- ok
      'luadoc',
      'luap',
      'make', -- ok
      'markdown', -- ok
      'markdown_inline',
      'nginx',
      'odin', -- ok
      'properties',
      'qmljs', -- ok
      'query',
      'readline',
      'regex',
      'sql', -- ok
      'ssh_config',
      'toml', -- ok
      'vim',
      'vimdoc',
      'xcompose',
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
