-- vim.keymap.set('n', '<leader>ex', function)
-- vim.keymap.del('n', '<Leader>ex1')
local live_rename = require("live-rename")
vim.keymap.set("n", "<leader>r", live_rename.rename, { desc = "LSP rename" })

vim.keymap.set({ "n", "o", "x" }, "w", "<cmd>lua require('spider').motion('w')<CR>", { desc = "Spider-w" })
vim.keymap.set({ "n", "o", "x" }, "e", "<cmd>lua require('spider').motion('e')<CR>", { desc = "Spider-e" })
vim.keymap.set({ "n", "o", "x" }, "b", "<cmd>lua require('spider').motion('b')<CR>", { desc = "Spider-b" })

vim.keymap.set({ "i" }, "kk", "<ESC>")

--vim.keymap.del("n", "<C-k>")
--vim.keymap.del("n", "<C-j>")
--vim.keymap.set("n", "<C-k>", "8k")
--vim.keymap.set("n", "<C-j>", "8j")

vim.keymap.set("n", "cc", ":bd<CR>")

vim.api.nvim_set_keymap("i", "<C-z>", "<C-x><C-o>", { noremap = true, silent = true })
