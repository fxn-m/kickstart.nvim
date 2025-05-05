return {
  'akinsho/bufferline.nvim',
  version = '*',
  dependencies = 'nvim-tree/nvim-web-devicons',
  config = function()
    require('bufferline').setup {
      options = {
        mode = 'buffers',
        diagnostics = 'nvim_lsp',
        show_buffer_icons = true,
        show_buffer_close_icons = false,
      },
    }
    vim.keymap.set('n', '<Tab>', '<cmd>BufferLineCycleNext<CR>', { desc = 'Next buffer' })
    vim.keymap.set('n', '<S-Tab>', '<cmd>BufferLineCyclePrev<CR>', { desc = 'Previous buffer' })
    vim.keymap.set('n', '<leader>bd', function()
      local buf = vim.api.nvim_get_current_buf()
      vim.cmd 'bprevious' -- Go to previous buffer before deleting
      vim.cmd('bdelete ' .. buf)
    end, { desc = 'Close buffer and stay in code' })
  end,
}
