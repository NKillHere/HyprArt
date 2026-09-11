-- Just CTRL+F to search for what keybind you want to change.
-- Some combination may require a more complex method, read the wiki for more info: -> https://wiki.hypr.land/configuring/core/binds/

require("utils")
prequire("cfg/defaults")
prequire("scripts")

local mainMod = "SUPER"
local sideMod1 = "SHIFT"
local sideMod2 = "CTRL"

--- Apps

-- Open Terminal (foot by default)
hl.bind(mainMod.. " + RETURN", hl.dsp.exec_cmd(default.apps.terminal))

-- Open File Explorer (Thunar by default)
hl.bind(mainMod.. " + E", hl.dsp.exec_cmd(default.apps.fileExplorer))

-- Open Web Browser (Zen by default)
hl.bind(mainMod.. " + B", hl.dsp.exec_cmd(default.apps.webBrowser))

-- Open App Launcher/Menu (Rofi by default)
hl.bind(mainMod.. " + D", hl.dsp.exec_cmd(default.apps.appLauncher))

-- Open Screenshot App ()

--- Trackpad
hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})

--- Actions
-- Things that change how hyprland displays things, such as changing focus to other windows

-- hl.bind(mainMod.. " + Q", hl.dsp.window.close()) -- close window
-- hl.bind(mainMod.. " + ".. sideMod1.. " Q", hl.dsp.window.close()) -- kill stubborn window

-- hl.bind(mainMod.. " + F", hl.dsp.window.fullscreen({}))

hl.bind(mainMod.. " + SPACE", hl.dsp.window.float({ action = "toggle" })) -- toggle float

-- Move focus with mainMod + arrow keys
hl.bind(mainMod.. " + left",  hl.dsp.focus({ direction = "left" }))
hl.bind(mainMod.. " + right", hl.dsp.focus({ direction = "right" }))
hl.bind(mainMod.. " + up",    hl.dsp.focus({ direction = "up" }))
hl.bind(mainMod.. " + down",  hl.dsp.focus({ direction = "down" }))

-- Switch workspaces with mainMod + [0-9]
-- Move active window to a workspace with mainMod + SHIFT + [0-9]
for i = 1, 10 do
    local key = i % 10 -- 10 maps to key 0
    hl.bind(mainMod.. " + ".. key,             hl.dsp.focus({ workspace = i}))
    hl.bind(mainMod.. " + SHIFT + ".. key,     hl.dsp.window.move({ workspace = i }))
end

-- Scroll through existing workspaces with mainMod + scroll
hl.bind(mainMod.. " + mouse_down", hl.dsp.focus({ workspace = "e+1" }))
hl.bind(mainMod.. " + mouse_up",   hl.dsp.focus({ workspace = "e-1" }))

-- Move/resize windows with mainMod + LMB/RMB and dragging
hl.bind(mainMod.. " + mouse:272", hl.dsp.window.drag(),   { mouse = true })
hl.bind(mainMod.. " + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop + Old keyboard functionality
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { locked = true, repeating = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"),      { locked = true, repeating = true })
hl.bind("XF86AudioMute",        hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"),     { locked = true, repeating = true })
hl.bind("XF86AudioMicMute",     hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"),   { locked = true, repeating = true })
hl.bind("XF86MonBrightnessUp",  hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"),                  { locked = true, repeating = true })
hl.bind("XF86MonBrightnessDown",hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"),                  { locked = true, repeating = true })

-- Requires playerctl
hl.bind("XF86AudioNext",  hl.dsp.exec_cmd("playerctl next"),       { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay",  hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev",  hl.dsp.exec_cmd("playerctl previous"),   { locked = true })
