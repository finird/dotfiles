local wezterm = require "wezterm"

local config = wezterm.config_builder()

config.window_background_opacity = 0.8

config.color_scheme = "Catppuccin Mocha"
config.font = wezterm.font("Hack Nerd Font Mono")
config.font_size = 12
config.audible_bell = "Disabled"

return config
