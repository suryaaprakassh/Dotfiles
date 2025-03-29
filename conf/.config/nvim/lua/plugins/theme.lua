return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,

		config = function ()
			vim.cmd("colorscheme cyberdream")
		end
}
--
-- return {
-- 	"craftzdog/solarized-osaka.nvim",
-- 	lazy = false,
-- 	priority = 1000,
-- 	opts = {},
--
-- 	config = function()
-- 		require("solarized-osaka").setup({
-- 			transparent = false,
-- 			terminal_colors = true,
-- 			styles = {
-- 				comments = { italic = false },
-- 				keywords = { italic = false },
-- 				functions = {},
-- 				variables = {},
-- 				sidebars = "dark",
-- 				floats = "dark",
-- 			},
-- 			sidebars = { "qf", "help" },
-- 			day_brightness = 0.4,
-- 			hide_inactive_statusline = false,
-- 			dim_inactive = false,
-- 			lualine_bold = false,
-- 		})
-- 		vim.cmd("colorscheme solarized-osaka")
-- 	end,
-- }
