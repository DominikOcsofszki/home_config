vim.keymap.set("n", "<leader>r", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])

-- Clipboard changed: e.g. "_ or "p
vim.keymap.set('n' ,'cw','"_ciw',{})
vim.keymap.set('n' ,'ciW','"_ciW',{})
vim.keymap.set('n' ,'ci','"_ci',{})
vim.keymap.set('n' ,'x','"_x',{})
vim.keymap.set('n', 'Y','"pyy"pp',{})
vim.keymap.set('n' ,'di}','"_di}',{})


vim.keymap.set('n', '<UP>','20k',{})
vim.keymap.set('n', '<DOWN>','20j',{})
vim.keymap.set('n', '<RIGHT>','20l',{})
vim.keymap.set('n', '<LEFT>','20h',{})
vim.keymap.set('n','\\',':w<enter>',{})
vim.keymap.set('n','|',':q<enter>',{})

vim.keymap.set({ 'n', 'v' }, '<Space>', '<Nop>', { silent = true })
vim.keymap.set('n', '<c-d>' ,'<c-d>zz', {})
vim.keymap.set('n', '<c-u>' ,'<c-u>zz', {})
vim.keymap.set('n', '-', '$',{})

vim.keymap.set('n', 'H','20h',{})
vim.keymap.set('n', 'L','20l',{})
vim.keymap.set('n', 'K','20k',{})
-- vim.keymap.set('n', 'J','20j',{})


vim.keymap.set('n', 'a','i',{})
vim.keymap.set('n', 'i','a',{})

vim.keymap.set('n', 'A','I',{})
vim.keymap.set('n', 'I','A',{})

vim.keymap.set('n', 'c"', 'ci"',{})
vim.keymap.set('n', "c'", "ci'",{})



vim.keymap.set('n', 'w', '3w',{})

