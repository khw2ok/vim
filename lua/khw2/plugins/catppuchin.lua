return {
  "catppuccin/nvim",
  priority = 1000,
    config = function()
      require("catppuccin").setup({
        flavor = "mocha",
        color_overrides = {
          mocha = {
            base = "#000000",
            crust = "#000000",
            mantle = "#000000",
            surface0 = "#767676",
            surface1 = "#767676",
            surface2 = "#767676",
            overlay0 = "#ffffff",
            overlay1 = "#ffffff",
            overlay2 = "#ffffff",
            text = "#cccccc",
            subtext0 = "#cccccc",
            subtext1 = "#cccccc",
            blue = "#89b4fa",
            green = "#a6e3a1",
            yellow = "#f9e2af",
            red = "#f38ba8",
            rosewater = "#ffffff",
            lavendar = "#ffffff",
            pink = "#f5c2e7",
            teal = "#94e2d5",
            peach = "#fab387",
            mauve = "#cba6f7",
            sapphire = "#74c7ec",
            sky = "#89dceb",
            maroon = "#eba0ac",
          }
        },
        custom_highlights = function(colors)
          return {
            MsgSeparator = { bg = colors.surface0 }
          }
        end
      })
      --vim.cmd.colorscheme "catppuccin"
    end
}
