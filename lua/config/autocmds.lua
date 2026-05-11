-- Autocmds are automatically loaded on the VeryLazy event
-- Default autocmds that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/autocmds.lua
--
-- Add any additional autocmds here
-- with `vim.api.nvim_create_autocmd`
--
-- Or remove existing autocmds by their group name (which is prefixed with `lazyvim_` for the defaults)
-- e.g. vim.api.nvim_del_augroup_by_name("lazyvim_wrap_spell")

vim.cmd([[autocmd BufNewFile,BufRead *.ejs set filetype=html.ejs syntax=ejs]])

vim.opt.formatoptions = "jcroqlnt"
-- vim.opt.textwidth = 80

-- autocmds
vim.api.nvim_create_autocmd("BufWinEnter", {
  pattern = { "*.md" },
  callback = function()
    vim.opt.colorcolumn = "80"
    vim.opt.textwidth = 80
  end,
})

vim.api.nvim_create_autocmd({ "BufWinLeave" }, {
  pattern = { "*.md" },
  callback = function()
    vim.opt.colorcolumn = "110"
    vim.opt.textwidth = 110
  end,
})
