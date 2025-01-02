return {
  {
    "vim-airline/vim-airline",
    config = function()
      vim.cmd("let g:airline_symbols.maxlinenr = ''")
      vim.cmd("let g:airline_symbols.linenr = ' '")
      vim.cmd("let g:airline_symbols.colnr = ', '")
      vim.g.airline_mode_map = {
        ["n"] = "NOR",
        ["i"] = "INS",
        ["R"] = "REP",
        ["c"] = "COM",
        ["v"] = "VIS",
        ["V"] = "V-L",
        [""] = "V-B",
        ["s"] = "SEL",
        ["S"] = "S-L",
        [""] = "S-B",
        ["t"] = "TER"
      }
      vim.cmd "AirlineRefresh"
    end
  },
  {
    "vim-airline/vim-airline-themes",
    priority = 500,
    config = function()
      vim.g.airline_theme = "khw2"
    end
  }
}
