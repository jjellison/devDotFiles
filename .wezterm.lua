local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.leader = {key = 'a', mods = 'CTRL'}

-- Font and colorscheme
config.color_scheme = 'Catppuccin Frappe'
config.font = wezterm.font 'Agave Nerd Font'
config.window_background_opacity = 0.65
config.window_decorations = "TITLE | RESIZE"

-- Key Combos

config.keys = {
    { key = 'c', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain', },
    { key = '|', mods = 'LEADER|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },},
    { key = '-', mods = 'LEADER', action = act.SplitVertical { domain = 'CurrentPaneDomain' },},

    -- Send Ctrl-a to the terminal (press it twice) 
    { key = 'a', mods = 'LEADER|CTRL', action = act.SendKey { key = 'a', mods = 'CTRL' },},
    { key = 'x', mods = 'LEADER', action = act.CloseCurrentTab {confirm = true },}
}

for i = 1, 8 do
    table.insert(config.keys, {
        key = tostring(i),
        mods = 'LEADER',
        action = act.ActivateTab(i-1),
    })
end

-- Config for smart-splits.nvim
local smart_splits = wezterm.plugin.require('https://github.com/mrjones2014/smart-splits.nvim')

smart_splits.apply_to_config(config, {

  -- directional keys to use in order of: left, down, up, right
  direction_keys = { 'h', 'j', 'k', 'l' },

  -- modifier keys to combine with direction_keys
  modifiers = {
    move = 'CTRL', -- modifier to use for pane movement, e.g. CTRL+h to move left
    resize = 'META', -- modifier to use for pane resize, e.g. META+h to resize to the left
  },
  -- log level to use: info, warn, error
  log_level = 'info',
})


return config
