local wezterm = require("wezterm")
local config = {}

config.color_scheme = "Solarized Dark Higher Contrast (Gogh)"
config.font_size = 14.0
config.audible_bell = "Disabled"
config.line_height = 1.0

config.enable_tab_bar=false

config.font = wezterm.font({
	family = "JetBrainsMono Nerd Font",
	weight = "Bold",
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
config.term = "xterm-256color"
return config
