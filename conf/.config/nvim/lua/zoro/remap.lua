local keymap = vim.keymap
vim.g.mapleader = " "

-- file tree
keymap.set("n", "<leader>tt", vim.cmd.Ex)
--vim escape
keymap.set("i", "jj", "<Esc>")

keymap.set("n", "<Esc>", vim.cmd.nohl)

--pane switching
keymap.set("n", "<C-j>", "<cmd> TmuxNavigateDown<CR>")
keymap.set("n", "<C-k>", "<cmd> TmuxNavigateUp<CR>")
keymap.set("n", "<C-h>", "<cmd> TmuxNavigateLeft<CR>")
keymap.set("n", "<C-l>", "<cmd> TmuxNavigateRight<CR>")

--line movements
keymap.set("v", "J", ":m '>+1<CR>gv=gv")
keymap.set("v", "K", ":m '<-2<CR>gv=gv")


keymap.set("n", "J", "mzJ`z")
keymap.set("n", "<C-d>", "<C-d>zz")
keymap.set("n", "<C-u>", "<C-u>zz")
keymap.set("n", "n", "nzzzv")
keymap.set("n", "N", "Nzzzv")

-- greatest remap ever
keymap.set("x", "<leader>p", [["_dP]])

keymap.set({ "n", "v" }, "<leader>y", [["+y]])
keymap.set("n", "<leader>Y", [["+Y]])

keymap.set( "n", "<leader>p", [["+p]])

-- keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set({ "n", "v" }, "<leader>d", [["_d]])

keymap.set("n", "Q", "<nop>")
-- keymap.set("n", "<C-f>", "<cmd>silent !tmux neww tmux-sessionizer<CR>")
keymap.set("n", "<leader>fm", vim.lsp.buf.format)

--keymap.set("n", "<C-k>", "<cmd>cnext<CR>zz")
--keymap.set("n", "<C-j>", "<cmd>cprev<CR>zz")
--keymap.set("n", "<leader>k", "<cmd>lnext<CR>zz")
--keymap.set("n", "<leader>j", "<cmd>lprev<CR>zz")

keymap.set("n", "<leader>s", [[:%s/\<<C-r><C-w>\>/<C-r><C-w>/gI<Left><Left><Left>]])
keymap.set("n", "<leader>x", "<cmd>!chmod +x %<CR>", { silent = true })

--comments
keymap.set('n', '<leader>/', 'gcc', { remap = true })
keymap.set('v', '<leader>/', 'gc',  { remap = true })
