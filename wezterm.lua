local wezterm = require 'wezterm'
local config = {}

config.term = 'wezterm'
config.max_fps = 160

config.font = wezterm.font("RobotoMono Nerd Font Mono", { weight = "Regular" })
config.font_size = 18
local additional_line_height = 15 -- between 0 and 100
config.line_height = 1 + (additional_line_height / 100)

config.color_scheme = 'Jellybeans (Gogh)'
config.window_decorations = "RESIZE"

config.use_fancy_tab_bar = false
config.tab_bar_at_bottom = true
config.show_new_tab_button_in_tab_bar = false

config.window_padding = {
  left = 4,
  right = 4,
  top = 4,
  bottom = 0,
}

config.leader = {
  key = "Space",
  mods = "CTRL"
}
config.keys = {
  {
    key = "c",
    mods = "LEADER",
    action = wezterm.action.SpawnTab 'CurrentPaneDomain'
  },
  {
    key = "x",
    mods = "LEADER",
    action = wezterm.action.CloseCurrentTab { confirm = true },
  },
  {
    key = "j",
    mods = "CTRL",
    action = wezterm.action.ActivateTabRelative(1)
  },
  {
    key = "k",
    mods = "CTRL",
    action = wezterm.action.ActivateTabRelative(-1)
  },
  {
    key = "f",
    mods = "LEADER",
    action = wezterm.action.ActivateCopyMode
  }
}

return config
