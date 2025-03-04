vim.g.mapleader = ","
vim.o.termguicolors = true

--vim.g.loaded_netrw = 1
--vim.g.loaded_netrwPlugin = 1

require("khw2.lazy")

vim.opt.clipboard = "unnamedplus"
vim.opt.tabstop = 2
vim.opt.shiftwidth = 2
vim.opt.softtabstop = 2
vim.opt.expandtab = true
vim.opt.shell = vim.fn.executable "pwsh" and "pwsh" or "powershell"
vim.opt.shellcmdflag = "-NoLogo -NoProfile -ExecutionPolicy RemoteSigned -Command [Console]::InputEncoding=[Console]::OutputEncoding=[System.Text.Encoding]::UTF8;"
vim.opt.shellredir = "-RedirectStandardOutput %s -NoNewWindow -Wait"
vim.opt.shellpipe = "2>&1 | Out-File -Encoding UTF8 %s; exit $LastExitCode"
vim.opt.shellquote = ""
vim.opt.shellxquote = ""

vim.cmd "set nu"
vim.cmd.colorscheme "quiet"

vim.diagnostic.config({
  virtual_text = true,
  virtual_lines = false,
  signs = false,
  underline = true
})

--vim.api.nvim_create_user_command("Unew", function()
--  pcall(function()
--    vim.cmd "belowright new"
--  end)
--end, {})
