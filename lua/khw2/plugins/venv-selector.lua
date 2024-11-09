return {
  "linux-cultist/venv-selector.nvim",
  dependencies = {
    "neovim/nvim-lspconfig",
    "nvim-telescope/telescope.nvim",
    "mfussenegger/nvim-dap-python"
  },
  lazy = false,
  branch = "regexp",
  config = function()
    require("venv-selector").setup({
      settings = {
        search = {
          my_venvs = {
            command = "fd python.exe$ ~/.venv --color never -E /proc"
          }
        }
      }
    })
  end,
  keys = {
    { "<leader>v", "<cmd>VenvSelect<cr>" },
  }
}
