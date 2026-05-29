-- set to true if you have a Nerd Font installed
vim.g.have_nerd_font = true

-- this supress the default splash screen appearing for a slightly moment
vim.opt.shortmess:append 'I'

vim.o.termguicolors = true
vim.opt.guicursor = 'n-v-c-i:block-blinkon0'
vim.o.number = true
vim.o.mouse = 'a'
vim.o.showmode = false

vim.o.winborder = 'double'

-- sync clipboard between OS and Neovim.
vim.schedule(function() vim.o.clipboard = 'unnamedplus' end)

vim.o.breakindent = true
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.signcolumn = 'yes'
vim.o.updatetime = 250
vim.o.timeoutlen = 300
vim.o.splitright = true
vim.o.splitbelow = true

vim.o.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.o.inccommand = 'split'
vim.o.cursorline = true
vim.o.cursorcolumn = false
vim.o.scrolloff = 10
vim.o.confirm = true

vim.opt.tabstop = 4 -- number of spaces a <Tab> counts for
vim.opt.shiftwidth = 4 -- size of an indent operation (>> or <<)
vim.opt.expandtab = true -- convert tabs to spaces automatically
vim.opt.softtabstop = 4 -- treat 4 spaces as a tab when deleting/backspacing

-- diagnostic config
vim.diagnostic.config {
    update_in_insert = false,
    severity_sort = true,
    float = { border = 'double', source = 'if_many' },
    underline = { severity = { min = vim.diagnostic.severity.WARN } },
    virtual_text = true,
    virtual_lines = false,
    -- replace: jump = { float = true }
    jump = { on_jump = function() vim.diagnostic.open_float() end },
}
