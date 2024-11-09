return {
  {
    "othree/html5.vim"
  },
  {
    "pangloss/vim-javascript"
  },
  {
    "luckasRanarison/tailwind-tools.nvim",
    name = "tailwind-tools",
    build = ":UpdateRemotePlugins",
    dependecies = { "nvim-treesitter/nvim-treesitter" },
    ft = { "html", "svelte" },
    opts = {
      server = {
        override = true,
        settings = {},
        on_attach = function(client, bufnr) end
      },
      document_color = {
        enabled = true,
        kind = "inline",
        inline_symbol = " ",
        debounce = 200
      },
      conceal = {
        enabled = false,
        min_length = nil,
        symbol = " ",
        highlight = {
          fg = "#38BDF8"
        }
      },
      cmp = {
        highlight = "foreground",
      },
      extensions = {
        queries = {},
        patterns = {}
      }
    }
  }
  --[[
  {
    "mrshmllow/document-color.nvim",
    config = function()
      require("document-color").setup({
        mode = "background",
      })
    end
  },
  {
    "razak17/tailwind-fold.nvim",
    ft = { "html", "svelte" }
  }
  ]]--
}
