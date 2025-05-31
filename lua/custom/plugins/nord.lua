return {
  'gbprod/nord.nvim',
  lazy = false, -- load at startup (necessary so colorscheme is set before anything else)
  priority = 1000, -- ensure it loads before other UI/color‐dependent plugins

  config = function()
    vim.o.termguicolors = true
    vim.cmd 'colorscheme nord'
  end,
}
