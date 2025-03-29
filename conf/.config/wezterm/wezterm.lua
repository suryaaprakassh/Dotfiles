local wezterm = require("wezterm")
local config = {}

config.font_size = 14.0
config.audible_bell = "Disabled"
config.line_height=1.3

config.enable_tab_bar=false
config.colors = require("cyberdream")
config.font = wezterm.font({
	family = "JetBrains Mono",
	weight="Medium",
	harfbuzz_features = {
		"ss01",
		"ss02",
		"ss03",
		"ss04",
		"ss05",
		"ss06",
		"ss07",
		"ss08",
		"dlig",
		"calt",
		"clig",
		"liga",
	},
})
return config
