local opts = { silent = true }

vim.g.mapleader = " "
vim.keymap.set("n", "<leader>E", ":Ex<CR>")
vim.keymap.set("n", "<leader>w", "<cmd>w<CR>")

--tranparent BG
vim.keymap.set('n', '<leader><F12>', ':TransparentToggle<CR>')


-- Navigate buffers
vim.keymap.set("n", "<leader>k", ":BufferLineCycleNext<CR>", opts)
vim.keymap.set("n", "<leader>j", ":BufferLineCyclePrev<CR>", opts)
vim.keymap.set("n", "<leader>K", ":BufferLineMoveNext<CR>", opts)
vim.keymap.set("n", "<leader>J", ":BufferLineMovePrev<CR>", opts)
vim.keymap.set("n", "<leader>x", "<cmd>bdelete<CR>", opts)

--init-lua
vim.keymap.set("n", "<leader>`", ":e ~/.config/nvim/lua/pezdel/packer.lua<CR>")
--alatracitty config
vim.keymap.set("n", "<leader>4", ":e ~/.config/alacritty/alacritty.yml<CR>")
vim.keymap.set("n", "<leader>1", ":e ~/.config/kitty/kitty.conf<CR>")
--tmux config
vim.keymap.set("n", "<leader>2", ":e ~/.tmux.conf<CR>")


-- Clear highlights
vim.keymap.set("n", "<leader>h", "<cmd>nohlsearch<CR>", opts)


--Tree 
vim.keymap.set("n", "<alt>T", ":ToggleTerm direction=float<CR>")
-- vim.keymap.set("n", "<leader>t", ":NvimTreeToggle<CR>")
-- vim.keymap.set("n", "<leader>n", ":NvimTreeOpen<CR>")
vim.keymap.set("n", "<leader>t", ":NERDTreeToggle<CR>")
vim.keymap.set("n", "<leader>n", ":NERDTreeFocus<CR>")

--VISIUAL
-- Better paste
vim.keymap.set("v", "p", '"_dP', opts)
-- Stay in indent mode
vim.keymap.set("v", "<", "<gv", opts)
vim.keymap.set("v", ">", ">gv", opts)


