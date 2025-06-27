-- return {
--   'everviolet/nvim', name = 'evergarden',
--   priority = 1000, -- Colorscheme plugin is loaded first before any other plugins
--   opts = {
--     theme = {
--       variant = 'fall', -- 'winter'|'fall'|'spring'|'summer'
--       accent = 'green',
--     },
--     editor = {
--       transparent_background = false,
--       sign = { color = 'none' },
--       float = {
--         color = 'mantle',
--         invert_border = false,
--       },
--       completion = {
--         color = 'surface0',
--       },
--     },
--   },
-- 	config = function ()
-- 		vim.cmd("colorscheme evergarden")
--
-- 	end
-- }
return {
    "scottmckendry/cyberdream.nvim",
    lazy = false,
    priority = 1000,

		config = function ()
			require("cyberdream").setup({
			transparent=true
		})
			vim.cmd("colorscheme cyberdream")
		end
}
