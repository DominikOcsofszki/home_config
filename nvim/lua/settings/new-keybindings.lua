
-- vim.keymap.set('n', '<leader>op', '<cmd>NnnPicker<cr>', {desc = "<cmd>NnnPicker<cr>"})
-- vim.keymap.set('n', '<leader>oc', '<cmd>:NnnPicker cmd=nnn $HOME/.config/home_config<cr>',
-- {desc = "<cmd>:NnnPicker cmd=nnn $HOME/.config/home_config<cr>"})


-- vim.keymap.set('n', '<leader>oe', '<cmd>NnnExplorer %:p:h<cr>', {desc = "<cmd>NnnExplorer %:p:h<cr>"})
vim.keymap.set('n', '<leader>oo', '<cmd>:NvimTreeFindFile<cr>', {desc = "<cmd>:NvimTreeFindFile<cr>"})

-- vim.keymap.set('n', '[_', require('harpoon.mark').add_file, {desc = "mark harpoon"}) vim.keymap.set('n', '[-', require('harpoon.ui').toggle_quick_menu, {desc = "Open Harpoon"})
-- vim.keymap.set('n', '[=', require('harpoon.ui').nav_next, {desc = "next Harpoon"})
-- vim.keymap.set('n', '[+', require('harpoon.ui').nav_prev, {desc = "prev Harpoon"})
vim.keymap.set('n', '<C-s>', require('nvim-tree.api').tree.toggle, {desc = "Tree toggle"})
-- vim.keymap.set('n', '<C-0>', require('nnn').builtin.open_in_preview, {desc = "Nnn"})

vim.keymap.set('n', '<c-a>', '<cmd>:TagbarToggle<cr>', {})



