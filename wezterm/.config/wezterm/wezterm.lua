-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
-- local config = wezterm.config_builder()
local config = {
	color_scheme = "Tokyo Night",
	font_size = 18,
	font = wezterm.font("JetBrainsMono Nerd Font"),

	hide_tab_bar_if_only_one_tab = true,
}

-- and finally, return the configuration to wezterm
return config
