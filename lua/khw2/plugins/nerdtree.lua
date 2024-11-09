return {
  "preservim/nerdtree",
  dependencies = {},
  config = function()
    vim.cmd "let g:NERDTreeShowHidden=1"
    vim.cmd "let g:NERDTreeStatusline = '%#NonText#'"
    vim.cmd "let g:NERDTreeMinimalUI=1"

    -- vim.keymap.set("n", "<leader>nt", "<cmd>NERDTree<CR>")
    vim.keymap.set("n", "<leader>nt", "<cmd>NERDTreeToggle<CR>")
    vim.keymap.set("n", "<leader>nf", "<cmd>NERDTreeFocus<CR>")
    vim.keymap.set("n", "<leader>ns", "<cmd>NERDTreeFind<CR>")
  end
}
