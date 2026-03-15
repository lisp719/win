local wezterm = require 'wezterm'

local mux = wezterm.mux
local config = wezterm.config_builder()

config.default_prog = { 'pwsh.exe' }
config.use_fancy_tab_bar = false
config.window_decorations = "RESIZE"

wezterm.on('gui-startup', function(cmd)
    local tab, pane, window = mux.spawn_window(cmd or {})
    window:gui_window():maximize()
end)

return config
