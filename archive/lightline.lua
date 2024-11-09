return {
  "https://github.com/itchyny/lightline.vim",
  config = function()
    local black = {"#000000", "0"}
    local p = {["normal"] = {}, ["inactive"] = {}, ["insert"] = {}, ["replace"] = {}, ["visual"] = {}, ["tabline"] = {}}
    p.normal.left = { {black, black}, {black, black} }
    p.normal.right = { {black, black}, {black, black}, {black, black} }
    p.normal.middle = { {black, black} }
    p.normal.error = { {black, black} }
    p.normal.warning = { {black, black} }
    p.inactive.left = { {black, black}, {black, black} }
    p.inactive.right = { {black, black}, {black, black} }
    p.inactive.middle = { {black, black} }
    p.insert.left = { {black, black}, {black, black} }
    p.replace.left = { {black, black}, {black, black} }
    p.visual.left = { {black, black}, {black, black} }
    p.tabline.left = { {black, black} }
    p.tabline.right = { {black, black}, {black, black}, {black, black} }
    p.tabline.middle = { {black, black} }
    p.tabline.tabsel = { {black, black} }

    vim.g["lightline#colorscheme#khw2#palette"] = lightline#colorscheme#fill(p)

    --vim.cmd "set laststatus=2"
    vim.g.lightline = {
      ["colorscheme"] = "khw2",
      ["mode_map"] = {
        ["n"] = "NOR",
        ["i"] = "INS",
        ["r"] = "REP",
        ["v"] = "VIS",
        ["V"] = "V-L",
        ["\22"] = "V-B",
        ["c"] = "CMD"
      }
    }
  end
}
