
-- Make sure to set `mapleader` before lazy so your mappings are correct
vim.g.mapleader = ' '
vim.g.maplocalleader = ' '

-- disable netrw for nvim-tree,
vim.g.loaded_netrw = 1
vim.g.loaded_netrwPlugin = 1

require('init-lazy')
-- require('init-more-lazy')
require('setup.init-setup')
require('settings.init-settings')
