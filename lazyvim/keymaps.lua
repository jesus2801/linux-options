-- vim.keymap.set('n', '<leader>ex', function)
-- vim.keymap.del('n', '<Leader>ex1')

vim.keymap.set({ "i" }, "kk", "<ESC>")

vim.keymap.del("n", "<C-k>")
vim.keymap.del("n", "<C-j>")
vim.keymap.set("n", "<C-k>", "8k")
vim.keymap.set("n", "<C-j>", "8j")

vim.keymap.set("n", "cc", ":bd<CR>")
