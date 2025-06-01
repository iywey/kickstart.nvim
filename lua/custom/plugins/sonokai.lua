return {
  'sainnhe/sonokai',
  priority = 1000,
  config = function()
    vim.opt.termguicolors = true
    vim.cmd 'colorscheme sonokai'
  end,
}
