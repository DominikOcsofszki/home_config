


vim.keymap.set('n', '<leader>oa', ':lua require("harpoon.mark").add_file()<enter>' ,{})
vim.keymap.set('n', '<leader>oh', ':lua require("harpoon.ui").toggle_quick_menu()<enter>' ,{})
vim.keymap.set('n', '<leader>th', '<cmd>Telescope find_files hidden=true<cr>' ,{})
vim.keymap.set('n', '<leader>tg', '<cmd>Telescope live_grep hidden=true<cr>' ,{})

