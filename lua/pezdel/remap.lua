local opts = { silent = true }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", ":Ex<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")
vim.keymap.set('n', '<leader><F12>', ':TransparentToggle<CR>')


-- Navigate buffers
vim.keymap.set("n", "<leader>k", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<leader>j", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<leader>K", ":BufferLineMoveNext<CR>", opts)
vim.keymap.set("n", "<leader>J", ":BufferLineMovePrev<CR>", opts)
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", opts)

vim.keymap.set("n", "<leader>`", ":e ~/.config/nvim/lua/pezdel/packer.lua<CR>")

-- Clear highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)


--VISIUAL
-- Better paste
vim.keymap.set("v", "p", '"_dP', opts)
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)
