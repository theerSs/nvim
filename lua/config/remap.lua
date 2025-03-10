vim.g.mapleader = " "
vim.keymap.set("n", "<leader>pv", vim.cmd.Neotree)
vim.keymap.set("n", "<C-a>", "ggVG")
-- Allows to move marked blocks of code
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv")
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv")

-- Make sure that cursor is not moving when you dont want
vim.keymap.set("n", "J", "mzJ`z")

-- Half-page jumping persist cursor in middle
vim.keymap.set("n", "<C-d>", "<C-d>zz")
vim.keymap.set("n", "<C-u>", "<C-u>zz")

vim.keymap.set("n", "n", "nzzzv")
vim.keymap.set("n", "N", "Nzzzv")

vim.keymap.set("x", "<leader>p", [["_dP]]) 

vim.keymap.set("n", "<leader>d", '<cmd>lua vim.diagnostic.open_float({scope = "cursor"})<CR>', {noremap = true, silent = true})