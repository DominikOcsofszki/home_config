
vim.cmd("!echo \'%\' | pbcopy")






vim.keymap.set('n','<leader>mp','vim.cmd("!echo \'%\' | pbcopy")',{desc="copy current file to clipboard"})


vim.api.nvim_create_autocmd({ 'DirChanged' }, {
  pattern = '*',
  callback = function()
    vim.cmd('pwd')
    -- vim.cmd [[ call chansend(v:stderr, printf("\033]7;file://%s\033\\", v:event.cwd)) ]]
  end,
})

  -- group = 'my_other_autocommands',



