vim.g.mapleader = " "      -- change leader to a space
vim.g.maplocalleader = " " -- change localleader to a space

-- vim.opt.clipboard = "unnamedplus"
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

vim.opt.guicursor = ""

vim.opt.ignorecase = true
vim.opt.smartcase = true

vim.opt.updatetime = 250
vim.opt.timeoutlen = 300

vim.opt.splitright = true
vim.opt.splitbelow = true

vim.opt.list = true
vim.opt.listchars = { tab = '» ', trail = '·', nbsp = '␣' }

vim.opt.inccommand = "split"
vim.opt.cursorline = true

vim.opt.scrolloff = 10
vim.opt.relativenumber = true

vim.opt.incsearch = true -- make search act like search in modern browsers
vim.opt.backup = false   -- creates a backup file

vim.opt.tabstop = 4
vim.opt.softtabstop = 4
vim.opt.shiftwidth = 4
vim.opt.expandtab = true

vim.opt.smartindent = true

vim.opt.wrap = false

vim.opt.swapfile = false
vim.opt.backup = false
vim.opt.undodir = os.getenv("HOME") .. "/.vim/undodir"
vim.opt.undofile = true

vim.opt.hlsearch = false
vim.opt.incsearch = true

vim.opt.termguicolors = true

vim.opt.signcolumn = "yes"
vim.opt.isfname:append("@-@")

vim.opt.updatetime = 50

vim.g.netrw_browse_split = 0
vim.g.netrw_winsize = 25

vim.opt.showmode = false
