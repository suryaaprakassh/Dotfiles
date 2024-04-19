return {
	{
		"nvim-telescope/telescope.nvim",
		tag = "0.1.5",

		dependencies = {
			"nvim-lua/plenary.nvim",
			{
				"nvim-telescope/telescope-fzf-native.nvim",
				build = "make",
				cond = function()
					return vim.fn.executable("make") == 1
				end,
			},
			{ "nvim-telescope/telescope-ui-select.nvim" },

			{ "nvim-tree/nvim-web-devicons", enabled = vim.g.have_nerd_font },
		},

		config = function()
			require("telescope").setup({
				extensions = {
					["ui-select"] = {
						require("telescope.themes").get_dropdown(),
					},
				},
			})

      pcall(require('telescope').load_extension, 'fzf')
      pcall(require('telescope').load_extension, 'ui-select')


			local builtin = require("telescope.builtin")

			--keymaps
			vim.keymap.set("n", "<leader>ff", builtin.find_files, {})
			vim.api.nvim_set_keymap(
				"n",
				"<leader>fa",
				"<cmd>Telescope find_files find_command=rg,--ignore,--hidden,--files,-u<CR>",
				{ noremap = true, silent = true }
			)
			vim.keymap.set("n", "<leader>fw", builtin.live_grep, {})
			vim.keymap.set("n", "<leader>fb", builtin.buffers, {})
			vim.keymap.set("n", "<leader>fh", builtin.help_tags, {})
			vim.keymap.set("n", "gI", builtin.lsp_implementations, {})
			vim.keymap.set("n", "gr", builtin.lsp_references, {})
		end,
	},
}
