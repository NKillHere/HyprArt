-- Just CTRL+F to search for what keybind you want to change.
-- Some combination may require a more complex method, read the wiki for more info: -> https://wiki.hypr.land/configuring/core/binds/

local default = require("defaults.lua")
local scripts = require("scripts")
local mainMod = "SUPER"
local sideMod1 = "SHIFT"
local sideMod2 = "CTRL"

-- [APPS]

-- Open Terminal (foot by default)
hl.bind(mainMod + "+ RETURN", hl.dsp.exec_cmd(default.terminal))

-- Open File Explorer (Thunar by default)
hl.bind(mainMod + "+ E", hl.dsp.exec_cmd(default.fileExplorer))

-- Open Web Browser (Zen by default)
hl.bind(mainMod + "+ B", hl.dsp.exec_cmd(default.webBrowser))

-- Open App Launcher/Menu (Rofi by default)
hl.bind(mainMod + "+ D", hl.dsp.exec_cmd(default.appLauncher))

-- Open Screenshot App ()

hl.gesture({
    fingers = 3,
    direction = "horizontal",
    action = "workspace"
})
