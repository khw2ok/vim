return {
  "https://github.com/andreasvc/vim-256noir",
  config = function()
    vim.cmd.colorscheme "256_noir"
    vim.cmd "highlight Pmenu ctermbg=black guibg=black"
  end
}
