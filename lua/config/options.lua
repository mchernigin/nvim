-- Options are automatically loaded before lazy.nvim startup
-- Default options that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/options.lua
-- Add any additional options here

vim.opt.colorcolumn = "80,100,120"
vim.opt.conceallevel = 1
vim.opt.spelllang = { "en", "ru" }

vim.opt.tabstop = 4
vim.opt.shiftwidth = 4

vim.b.autoformat = false

vim.filetype.add({
  extension = {
    backend = "toml",
    object = "toml",
    category = "toml",
    application = "toml",
    component = "toml",
    edition = "toml",
    diag = "toml",
  },
})
