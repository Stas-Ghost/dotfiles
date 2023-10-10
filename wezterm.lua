-- Pull in the wezterm API
local wezterm = require 'wezterm'

-- This table will hold the configuration.
local config = {}

-- In newer versions of wezterm, use the config_builder which will
-- help provide clearer error messages
if wezterm.config_builder then
  config = wezterm.config_builder()
end

-- This is where you actually apply your config choices

-- For example, changing the color scheme:
config.color_scheme = 'Solarized (dark) (terminal.sexy)'

config.use_fancy_tab_bar = false
config.hide_tab_bar_if_only_one_tab = true
-- config.font = wezterm.font 'Source Code Pro'
config.font_size = 14

config.enable_scroll_bar = false

config.window_padding = {
  left = '1px',
  right = '1px',
  top = '1px',
  bottom = '1px',
}


-- and finally, return the configuration to wezterm
return config
