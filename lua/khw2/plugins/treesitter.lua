return {
  "nvim-treesitter/nvim-treesitter",
  cmd = "TSUpdate",
  priority = -1000,
  config = function()
    require("nvim-treesitter.configs").setup({
      auto_install = true,
      highlight = {
        enable = true
      }
    })
    require "nvim-treesitter.install".compilers = { "clang" }
  end
}
