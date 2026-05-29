do
    vim.pack.add { 'https://github.com/catgoose/nvim-colorizer.lua' }
    require('colorizer').setup {
        parsers = {
            names = {
                enable = false,
            },
        },
    }
end
