--[[
return {
  "nvim-tree/nvim-tree.lua",
  dependencies = {
    "nvim-tree/nvim-web-devicons"
  },
  config = function()
    local api = require("nvim-tree.api")

    require("nvim-tree").setup()

    api.events.subscribe(api.events.Event.TreeOpen, function()
      vim.wo.statusline = " "
    end)

    require("nvim-tree").setup({
      sort = {
        sorter = "case_sensitive",
      },
      view = {
        width = 30,
      },
      renderer = {
        group_empty = true,
        icons = {
          show = {
            file = false,
            folder = false,
            folder_arrow = false,
            git = false,
          }
        },
      },
      filters = {
        dotfiles = true,
      },
    })

    vim.keymap.set("n", "<leader>ee", "<cmd>NvimTreeToggle<CR>")
    vim.keymap.set("n", "<leader>ef", "<cmd>NvimTreeFocus<CR>")
    vim.keymap.set("n", "<leader>ec", "<cmd>NvimTreeCollapse<CR>")
    vim.keymap.set("n", "<leader>er", "<cmd>NvimTreeRefresh<CR>")
  end
}
]]--
