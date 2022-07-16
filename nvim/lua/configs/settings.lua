local opt = vim.opt

-- My configs
opt.number = true
opt.errorbells = false
opt.tabstop = 4
opt.softtabstop = 4
opt.shiftwidth = 4
opt.expandtab = true
opt.smartindent = true
opt.nu = true
opt.swapfile = false
opt.backup = false
opt.undodir="/home/joao/Documents/archives/projects/mcode/.undodir"
opt.undofile = true
opt.incsearch = true
vim.cmd([[ highlight ColorColumn ctermbg=0 guibg=lightgrey ]])
vim.cmd([[ syntax on ]])

-- Plugin config
vim.cmd([[ let extension = expand('%:e') ]])

-- Color
vim.cmd([[ set termguicolors ]])
