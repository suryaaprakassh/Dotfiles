return {
	"tpope/vim-fugitive",
	config = function() 
    vim.keymap.set("n", "<leader>g", ':G<CR>', {})
  end,
}
