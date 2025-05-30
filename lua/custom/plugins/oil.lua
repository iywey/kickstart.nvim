return {
  {
    'stevearc/oil.nvim',
    ---@module 'oil'
    ---@type oil.SetupOpts
    dependencies = { 'nvim-tree/nvim-web-devicons' },
    lazy = false,
    config = function()
      require('oil').setup {
        columns = { 'icon' },
        keymaps = {
          ['<C-h>'] = false,
          ['<C-l>'] = false,
          ['<C-k>'] = false,
          ['<C-j>'] = false,
          -- ["<M-h>"] = "actions.select_split",
        },
        view_options = {
          show_hidden = true,
        },
      }

      -- Open parent directory in current window
      -- vim.keymap.set("n", "g/", "<CMD>Oil<CR>", { desc = "Open parent directory" })

      -- Open parent directory in floating window
      vim.keymap.set('n', 'g/', require('oil').toggle_float, { desc = 'Open [/] parent directory' })
    end,
  },
}
