return {
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
  -- -- https://github.com/ggandor/leap.nvim
  -- {
  --   'ggandor/leap.nvim',
  --   config = function()
  --     vim.keymap.set({ 'n', 'x', 'o' }, 's', '<Plug>(leap-forward)')
  --     vim.keymap.set({ 'n', 'x', 'o' }, 'S', '<Plug>(leap-backward)')
  --     vim.keymap.set({ 'n', 'x', 'o' }, 'gs', '<Plug>(leap-from-window)')
  --   end,
  -- },
  -- {
  --   'folke/zen-mode.nvim',
  --   keys = {
  --     {
  --       '<leader>z',
  --       '<cmd>ZenMode<CR>',
  --       desc = 'Toggle Zen Mode',
  --     },
  --   },
  -- },
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
