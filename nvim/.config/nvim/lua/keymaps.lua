vim.g.mapleader = " "

vim.keymap.set({'n', 'v', 'x'}, '<leader>y', '"+y')
vim.keymap.set({'n', 'v', 'x'}, '<leader>p', '"+p')
vim.keymap.set('n', '<C-c>', ':nohl<CR>')

vim.keymap.set("v", "<A-Down>", ":m '>+1<CR>gv=gv", { desc = "Move selected lines down" })
vim.keymap.set("v", "<A-Up>", ":m '<-2<CR>gv=gv", { desc = "Move selected lines up" })
vim.keymap.set('n', '<leader>u', '<cmd>Undotree<CR>', { desc = "Toggle Native Undotree" })

vim.keymap.set('n', '<leader>we', ':w<CR>:Ex<CR>')
vim.keymap.set('n', '<leader>e', ':Ex<CR>')
