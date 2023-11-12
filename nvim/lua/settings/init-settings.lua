


vim.o.termguicolors = true
vim.o.number = true
vim.o.hlsearch = true
vim.o.mouse = "a"
vim.o.undofile = true
vim.o.ignorecase = true
vim.o.smartcase = true
vim.o.cursorline = true
vim.o.cursorlineopt = "number"
vim.o.clipboard = "unnamedplus"
vim.o.signcolumn ="yes"
vim.o.hlsearch = false
vim.o.breakindent = true

vim.o.updatetime = 250
vim.o.timeout = true
vim.o.timeoutlen = 300

vim.o.completeopt = 'menuone,preview'
-- vim.o.completeopt = 'menuone,noselect'
vim.o.so = 15
vim.o.tabstop = 4
vim.g.python3_host_prog = "/Library/Frameworks/Python.framework/Versions/3.11/bin/python3"





-- require('settings.settings')
require('settings.keybindings')
require('settings.new-keybindings')
require('settings.key-remap')
require('settings.vimtex')
require('settings.when-exitVim')
require('settings.extra-require')
