-- Pull in the wezterm API
local wezterm = require("wezterm")

-- This will hold the configuration.
-- local config = wezterm.config_builder()
local config = {
  use_ime = true,
  color_scheme = "Tokyo Night",

  -- font
  font_size = 18,
  font = wezterm.font("JetBrainsMono Nerd Font"),

  -- Tab bar
  enable_tab_bar = true,
  hide_tab_bar_if_only_one_tab = true,
  show_tab_index_in_tab_bar = false,
  tab_bar_at_bottom = true,
  tab_max_width = 25,

  -- Basic
  check_for_updates = false,
  switch_to_last_active_tab_when_closing_tab = false,

  -- Window
  native_macos_fullscreen_mode = true,
  adjust_window_size_when_changing_font_size = true,
  window_background_opacity = 0.9,
  window_padding = {
    left = 5,
    right = 5,
    top = 5,
    bottom = 5
  },
  window_background_image_hsb = {
    brightness = 0.8,
    hue = 1.0,
    saturation = 1.0
  },

  keys = {
    {
      key = 't',
      mods = 'CTRL',
      action = wezterm.action.SpawnTab 'CurrentPaneDomain'
    }, {
    key = 'w',
    mods = 'CTRL',
    action = wezterm.action.CloseCurrentTab {
      confirm = true
    }
  },
  }
}

-- and finally, return the configuration to wezterm
return config
