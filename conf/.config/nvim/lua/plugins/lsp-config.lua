return {
	"neovim/nvim-lspconfig",
	config = function()
		local config = require "lspconfig"
		local servers = {"lua_ls","clangd","gopls","rust_analyzer"}
		for _,name in ipairs(servers) do
			config[name].setup{}
		end
		config.elixirls.setup{
			cmd = {"/Users/suryaprakash/.local/share/nvim/mason/bin/elixir-ls"}
		}
	end
}
