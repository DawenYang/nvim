-- Keymaps are automatically loaded on the VeryLazy event
-- Default keymaps that are always set: https://github.com/LazyVim/LazyVim/blob/main/lua/lazyvim/config/keymaps.lua
-- Add any additional keymaps here

vim.keymap.set("i", "jk", "<ESC>", { noremap = true, silent = true })

vim.keymap.set("i", "<C-l>", "<Right>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-h>", "<Left>", { noremap = true, silent = true })
vim.keymap.set("i", "<C-i>", "<C-o>$", { noremap = true, silent = true })

vim.keymap.set("n", "<C-l>", "$", { noremap = true, silent = true })
vim.keymap.set("n", "<C-h>", "^", { noremap = true, silent = true })
