local wezterm = require("wezterm")
local constants = require("constants")
local config = wezterm.config_builder()

config.automatically_reload_config = true

config.front_end = "WebGpu"
-- config.use_ime = false

-- Font settings
config.font = wezterm.font("MesloLGS Nerd Font Mono")
config.font_size = 12
-- config.line_height = 1.2

-- Color scheme
local theme = {
	dark = {
		foreground = "#CDD6F4",
		background = "#1E1E2E",
		cursor_bg = "#F5E0DC",
		cursor_border = "#F5E0DC",
		cursor_fg = "#1E1E2E",
		selection_bg = "#45475A",
		selection_fg = "#CDD6F4",
		ansi = { "#45475A", "#F38BA8", "#A6E3A1", "#F9E2AF", "#89B4FA", "#F5C2E7", "#94E2D5", "#BAC2DE" },
		brights = { "#585B70", "#F38BA8", "#A6E3A1", "#F9E2AF", "#89B4FA", "#F5C2E7", "#94E2D5", "#A6ADC8" },
	},
	light = {
		foreground = "#4C4F69",
		background = "#EFF1F5",
		cursor_bg = "#DC8A78",
		cursor_border = "#DC8A78",
		cursor_fg = "#EFF1F5",
		selection_bg = "#ACB0BE",
		selection_fg = "#4C4F69",
		ansi = { "#5C5F77", "#D20F39", "#40A02B", "#DF8E1D", "#1E66F5", "#EA76CB", "#179299", "#ACB0BE" },
		brights = { "#6C6F85", "#D20F39", "#40A02B", "#DF8E1D", "#1E66F5", "#EA76CB", "#179299", "#BCC0CC" },
	},
}
-- config.colors = theme.dark
config.color_scheme = "Kanagawa (Gogh)"

-- Appearance settings
config.window_decorations = "RESIZE"
config.hide_tab_bar_if_only_one_tab = true
config.window_padding = {
	left = 0,
	right = 0,
	top = 0,
	bottom = 0,
}
config.initial_rows = 60
config.initial_cols = 240
config.window_background_image = constants.bg_image
config.window_background_image_hsb = {
	brightness = 0.1,
	saturation = 1.0,
	hue = 1.0,
}
-- config.window_background_opacity = 0.8
-- config.macos_window_background_blur = 30

config.window_close_confirmation = "NeverPrompt"

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
	{
		key = "Tab",
		mods = "CTRL",
		action = wezterm.action.SendKey({ key = "Tab", mods = "CTRL" }),
	},
	{
		key = "Tab",
		mods = "CTRL|SHIFT",
		action = wezterm.action.SendKey({ key = "Tab", mods = "CTRL|SHIFT" }),
	},
	{
		key = "k",
		mods = "CMD",
		action = wezterm.action.ClearScrollback("ScrollbackAndViewport"),
	},
	-- {
	-- 	key = "Enter",
	-- 	mods = "SHIFT",
	-- 	action = wezterm.action.SendString("\x0a"),
	-- },
	-- { key = "Enter", mods = "SHIFT", action = wezterm.action.SendString("\n") },
}

-- GUI startup event to maximize the window
-- local mux = wezterm.mux
-- wezterm.on("gui-startup", function(cmd)
-- 	local tab, pane, window = mux.spawn_window(cmd or {})
-- 	window:gui_window():maximize()
-- end)

-- local seen = {}
-- wezterm.on("window-config-reloaded", function(window, pane)
-- 	local id = window:mux_window():window_id()
-- 	if not seen[id] then
-- 		seen[id] = true
-- 		wezterm.sleep_ms(80)
-- 		window:maximize()
-- 	end
-- end)

-- config.default_prog = { "echo $SHELL" }
-- config.default_prog = { "tmux" }
-- config.default_prog = { "/bin/zsh", "-l", "-c", "tmux attach -t main || tmux new -s main || exec zsh" }
-- config.default_prog = { "/opt/homebrew/bin/tmux", "new-session", "-A", "-s", "main" }

return config
