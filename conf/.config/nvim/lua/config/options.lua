vim.cmd("set tabstop=2")
vim.cmd("set softtabstop=2")
vim.cmd("set shiftwidth=2")
vim.cmd("set number")
vim.cmd("set relativenumber")
vim.cmd("set splitright")
vim.opt.termguicolors = true
vim.opt.background = "dark"
vim.cmd("set scl=yes")
vim.cmd("set laststatus=3")
vim.g.mapleader=" "
vim.opt.winborder = "rounded"
vim.cmd [[
	hi! NormalFloat guibg=NONE
	hi! FloatBorder guibg=NONE guifg=White
]]

