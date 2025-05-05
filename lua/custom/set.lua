vim.opt.nu = true
vim.opt.relativenumber = true

vim.keymap.set('n', '<leader>rn', function()
  local relativenumber = vim.wo.relativenumber
  vim.wo.relativenumber = not relativenumber
  vim.wo.number = true -- ensure absolute stays on
end, { desc = 'Toggle Relative Number' })

vim.keymap.set('n', 'Q', '<nop>')
