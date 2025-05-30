-- Neo-tree is a Neovim plugin to browse the file system
-- https://github.com/nvim-neo-tree/neo-tree.nvim

return {
  'nvim-neo-tree/neo-tree.nvim',
  version = '*',
  dependencies = {
    'nvim-lua/plenary.nvim',
    'nvim-tree/nvim-web-devicons', -- not strictly required, but recommended
    'MunifTanjim/nui.nvim',
  },
  lazy = false,
  keys = {
    { '<C-/>', ':Neotree reveal<CR>', desc = 'NeoTree reveal', silent = true },
  },
  opts = {
    sources = {
      'filesystem',
      'buffers',
      'git_status',
    },
    source_selector = {
      -- Enable the selector in the winbar (or statusline)
      -- winbar = true,
      content_layout = 'center',
      sources = {
        { source = 'filesystem' },
        { source = 'buffers' },
        { source = 'git_status' },
      },
    },
    filesystem = {
      window = {
        mappings = {
          ['<C-/>'] = 'close_window',
        },
      },
    },
  },
}
