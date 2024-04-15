--copy & past stuff
vim.keymap.set("n", "<leader>p", '"+p', {})
vim.keymap.set("n", "<leader>y", '"+y', {})
vim.keymap.set("n", "<leader>d", '"_d', {})

--visual remaps
vim.keymap.set("v", "<leader>y", '"+y', {})
vim.keymap.set("v", "<leader>d", '"_d', {})


--select paste remap
vim.keymap.set("x", "p", '"_dP', {})

--move lines 
vim.keymap.set("v", "J", ":m '>+1<CR>gv=gv", {})
vim.keymap.set("v", "K", ":m '<-2<CR>gv=gv", {})

--insert maps
vim.keymap.set("i", "jj", "<Esc>", {})
vim.keymap.set("i", "<C-l>", "<Left>", {})
vim.keymap.set("i", "<C-h>", "<Right>", {})
vim.keymap.set("i", "<C-k>", "<Up>", {})
vim.keymap.set("i", "<C-j>", "<Down>", {})

--normal maps
vim.keymap.set("n", "<Esc>", ":nohl<CR>", {})

--other remaps
vim.keymap.set("n", "<C-f>", ":silent !tmux neww tmux-sessionizer<CR>", {})

--splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", {})
vim.keymap.set("n", "<leader>sh", "<C-w>s", {})
vim.keymap.set("n", "<leader>sq", "<C-w>q", {})
