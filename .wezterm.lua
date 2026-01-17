local wezterm = require 'wezterm'
local config = wezterm.config_builder()
local act = wezterm.action

config.leader = {key = 'a', mods = 'CTRL'}

-- Font and colorscheme
config.color_scheme = 'Catppuccin Frappe'
config.font = wezterm.font 'Agave Nerd Font'

-- Key Combos

config.keys = {
    { key = 'c', mods = 'LEADER', action = act.SpawnTab 'CurrentPaneDomain', },
    { key = '|', mods = 'LEADER|SHIFT', action = act.SplitHorizontal { domain = 'CurrentPaneDomain' },},
    { key = '-', mods = 'LEADER', action = act.SplitVertical { domain = 'CurrentPaneDomain' },},

    -- Send Ctrl-a to the terminal (press it twice) 
    { key = 'a', mods = 'LEADER|CTRL', action = act.SendKey { key = 'a', mods = 'CTRL' },},

    -- Move around within a tab
    { key = 'j', mods = 'CTRL', action = act.ActivatePaneDirection 'Down',},
    { key = 'k', mods = 'CTRL', action = act.ActivatePaneDirection 'Up',},
    { key = 'h', mods = 'CTRL', action = act.ActivatePaneDirection 'Left',},
    { key = 'l', mods = 'CTRL', action = act.ActivatePaneDirection 'Right',},

    -- Resize a specific pane
    { key = 'j', mods = 'LEADER', action = act.AdjustPaneSize {'Down', 5},},
    { key = 'k', mods = 'LEADER', action = act.AdjustPaneSize {'Up', 5},},
    { key = 'h', mods = 'LEADER', action = act.AdjustPaneSize {'Left', 5},},
    { key = 'l', mods = 'LEADER', action = act.AdjustPaneSize {'Right', 5},},

    { key = 'x', mods = 'LEADER', action = act.CloseCurrentTab {confirm = true },}
}

for i = 1, 8 do
    table.insert(config.keys, {
        key = tostring(i),
        mods = 'LEADER',
        action = act.ActivateTab(i-1),
    })
end



return config

