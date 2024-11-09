return {
  "filipdutescu/renamer.nvim",
  dependencies = {
    "nvim-lua/plenary.nvim"
  },
  config = function()
    require("renamer").setup {
      with_popup = false
    }
    local keymap = vim.keymap
    keymap.set("i", "<F2>", "<cmd>lua require('renamer').rename()<cr>", { noremap = true, silent = true })
    keymap.set("n", "<leader>rn", "<cmd>lua require('renamer').rename()<cr>", { noremap = true, silent = true })
    keymap.set("v", "<leader>rn", "<cmd>lua require('renamer').rename()<cr>", { noremap = true, silent = true })
  end
}
