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
vim.keymap.set("i", "<C-l>", "<Right>", {})
vim.keymap.set("i", "<C-h>", "<Left>", {})
vim.keymap.set("i", "<C-k>", "<Up>", {})
vim.keymap.set("i", "<C-j>", "<Down>", {})

--normal maps
vim.keymap.set("n", "<Esc>", ":nohl<CR>", {})

--other remaps
vim.keymap.set("n", "<C-f>", ":silent !tmux neww session.sh<CR>", {})

--splits
vim.keymap.set("n", "<leader>sv", "<C-w>v", {})
vim.keymap.set("n", "<leader>sh", "<C-w>s", {})
vim.keymap.set("n", "<leader>sq", "<C-w>q", {})

--tabs
vim.keymap.set("n", "<Tab>", ":tabnext<CR>", {})
vim.keymap.set("n", "<S-Tab>", ":tabprev<CR>", {})
vim.keymap.set("n", "<leader>tn", ":tabnew<CR>", {})
vim.keymap.set("n", "<leader>tq", ":tabclose<CR>", {})

--quick fix list
vim.keymap.set("n", "<leader>co", ":copen<CR>", {})
vim.keymap.set("n", "c]", ":cnext<CR>", {})
vim.keymap.set("n", "c[", ":cprev<CR>", {})


--lsp

vim.keymap.set("n", "gd", vim.lsp.buf.definition, {})
vim.keymap.set({ "n", "v" }, "<space>ca", vim.lsp.buf.code_action, {})
vim.keymap.set("n", "<space>rn", vim.lsp.buf.rename, {})
vim.keymap.set("n", "<space>sd", vim.diagnostic.open_float, {})
vim.keymap.set("n", "<space>fq", vim.diagnostic.setloclist, {})

