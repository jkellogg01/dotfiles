local wezterm = require 'wezterm'

local config = {}

if wezterm.config_builder then
    config = wezterm.config_builder()
end

config.color_scheme = 'Dracula (Official)'
config.font_size = 18.0
config.font = wezterm.font 'Iosevka Term'
config.window_background_opacity = 0.85

config.tab_bar_at_bottom = true
config.use_fancy_tab_bar = false
config.window_decorations = 'RESIZE'

return config
