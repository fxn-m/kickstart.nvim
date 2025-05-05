return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons',
    'MunifTanjim/nui.nvim',
  },
  cmd = 'Neotree',
  keys = {
    {
      '\\',
      function()
        require('neo-tree.command').execute { toggle = true, reveal = true }
      end,
      desc = 'NeoTree toggle and reveal current file',
      silent = true,
    },
  },
  opts = {
    sources = { 'filesystem', 'buffers', 'git_status' },
    open_files_do_not_replace_types = { 'terminal', 'Trouble', 'qf' },
    filesystem = {
      follow_current_file = {
        enabled = true,
      },
      hijack_netrw_behavior = 'open_current',
      window = {
        mappings = {
          ['\\'] = 'close_window',
        },
      },
    },
    window = {
      width = 30,
      mappings = {
        ['<space>'] = 'toggle_node',
        ['<CR>'] = 'open',
        ['S'] = 'open_split',
        ['s'] = 'open_vsplit',
        ['t'] = 'open_tabnew',
      },
    },
  },
  vim.keymap.set('n', '|', '<cmd>Neotree action=focus<CR>', { desc = 'Focus NeoTree' }),
}
