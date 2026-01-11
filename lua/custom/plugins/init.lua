return {
  {
    'nathangrigg/vim-beancount',
    ft = 'beancount',
  },
  -- {
  --   'ThePrimeagen/harpoon',
  --   branch = 'harpoon2',
  --   dependencies = { 'nvim-lua/plenary.nvim' },
  --   config = function()
  --     local harpoon = require 'harpoon'
  --
  --     -- REQUIRED
  --     harpoon:setup()
  --     -- REQUIRED
  --
  --     vim.keymap.set('n', '<leader>ha', function()
  --       harpoon:list():add()
  --     end, { desc = '[H]arpoon add' })
  --     vim.keymap.set('n', '<leader>hq', function()
  --       harpoon.ui:toggle_quick_menu(harpoon:list())
  --     end, { desc = 'Harpoon [Q]uick menu' })
  --
  --     vim.keymap.set('n', 'gj', function()
  --       harpoon:list():select(1)
  --     end, { desc = 'Harpoon 1' })
  --     vim.keymap.set('n', 'gk', function()
  --       harpoon:list():select(2)
  --     end, { desc = 'Harpoon 2' })
  --     vim.keymap.set('n', 'gl', function()
  --       harpoon:list():select(3)
  --     end, { desc = 'Harpoon 3' })
  --     vim.keymap.set('n', 'g;', function()
  --       harpoon:list():select(4)
  --     end, { desc = 'Harpoon 4' })
  --     --
  --     -- -- Toggle previous & next buffers stored within Harpoon list
  --     -- vim.keymap.set('n', '<C-S-P>', function()
  --     --   harpoon:list():prev()
  --     -- end)
  --     -- vim.keymap.set('n', '<C-S-N>', function()
  --     --   harpoon:list():next()
  --     -- end)
  --   end,
  -- },
  {
    'folke/zen-mode.nvim',
    keys = {
      {
        '<leader>tz',
        '<cmd>ZenMode<CR>',
        desc = '[T]oggle [Z]en Mode',
      },
    },
    opts = {
      window = {
        width = 80,
      },
      plugins = {
        options = {
          laststatus = 3, -- Show statusline in zen mode
          showcmd = true, -- Show partial commands
        },
      },
    },
  },
  {
    'tpope/vim-fugitive',
  },
  {
    'echasnovski/mini.bufremove',
    version = false,

    vim.api.nvim_create_user_command('BD', function(opts)
      local force = opts.bang or false
      require('mini.bufremove').delete(0, force)
    end, {
      bang = true,
      desc = 'Buffer delete via mini.bufremove (preserve windows)',
    }),
    vim.cmd [[
    cabbrev bd BD
  ]],
  },
}
