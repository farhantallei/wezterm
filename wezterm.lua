local wezterm = require("wezterm")
local constants = require("constants")
local config = wezterm.config_builder()

-- Font settings
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 19
-- config.line_height = 1.2

-- Color scheme
config.colors = {
  foreground = "#CBE0F0",
  background = "#011423",
  cursor_bg = "#47FF9C",
  cursor_border = "#47FF9C",
  cursor_fg = "#011423",
  selection_bg = "#033259",
  selection_fg = "#CBE0F0",
  ansi = { "#94A9C3", "#E52E2E", "#44FFB1", "#FFE073", "#0FC5ED", "#a277ff", "#24EAF7", "#24EAF7" },
  brights = { "#94A9C3", "#E52E2E", "#44FFB1", "#FFE073", "#A277FF", "#a277ff", "#24EAF7", "#24EAF7" },
}

-- Appearance settings
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
  left = 0,
  right = 0,
  top = 0,
  bottom = 0,
}
config.window_background_image = constants.bg_image
config.window_background_opacity = 0.8
config.macos_window_background_blur = 10

-- Miscellaneous settings
config.max_fps = 120
config.prefer_egl = true

-- Key bindings
config.keys = {
  {
    key = "LeftArrow",
    mods = "CMD",
    action = wezterm.action.SendString("\x1b[1;5D"),
  },
  {
    key = "RightArrow",
    mods = "CMD",
    action = wezterm.action.SendString("\x1b[1;5C"),
  },
}

return config
