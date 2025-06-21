return {
  'sainnhe/gruvbox-material',
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd 'colorscheme gruvbox-material'
  end,
}
