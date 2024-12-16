local wezterm = require 'wezterm'

-- Initialize the configuration table
local config = wezterm.config_builder()

-- Set the default program to Git Bash
config.default_prog = { "C:\\Program Files\\Git\\bin\\bash.exe" }

-- Set the default working directory (optional)
config.default_cwd = "C:/Code"

-- Set your color scheme
config.color_scheme = 'Brogrammer'

config.font =
  wezterm.font('JetBrains Mono', { weight = 'Bold', italic = true })

config.harfbuzz_features = { 'calt=0', 'clig=0', 'liga=0' }

config.initial_cols = 150 
config.initial_rows = 35 

-- Enable blinking cursor
config.default_cursor_style = "BlinkingBlock"

-- Optionally, you can also control the blink rate
config.cursor_blink_rate = 500

config.colors = {
  cursor_bg = "#f20089",  -- Cursor background color (e.g., red)
  cursor_fg = "#3c096c",  -- Cursor foreground color (e.g., white for the text)
  cursor_border = "#f20089",  -- Cursor border color (same as the background color)
}

config.keys = {

  {key="C", mods="CTRL", action=wezterm.action{CopyTo="Clipboard"}},

  {key="V", mods="CTRL", action=wezterm.action{PasteFrom="Clipboard"}},

  {key="t", mods="CTRL", action=wezterm.action{SplitHorizontal={domain="CurrentPaneDomain"}}},

  {key="T", mods="CTRL|SHIFT", action=wezterm.action{SplitVertical={domain="CurrentPaneDomain"}}},

  {key="w", mods="CTRL", action=wezterm.action{CloseCurrentPane={confirm=false}}},

  {key="LeftArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Left"}},
  {key="RightArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Right"}},
  {key="UpArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Up"}},
  {key="DownArrow", mods="ALT", action=wezterm.action{ActivatePaneDirection="Down"}},
}

return config
