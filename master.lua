-- Welcome to HyprArt, a simple enough hyprland config for Artix that 'just works', but
-- can be customized to one's liking. For more information on how to configure, it is
-- highly recommended to look at the wiki -> https://wiki.hypr.land/Configuring/Start/
require("utils")


--- Default Apps

prequire("cfg/defaults")


--- Autostarting Apps

prequire("cfg/start-up")


--- Monitors

-- See https://wiki.hypr.land/Configuring/Basics/Monitors/
prequire("cfg/monitors")


--- Input + Hotkeys (go to the cfg -> input.lua to change)
prequire("cfg/input")


--- Environment Variables
-- contains configuration for some mundane yet useful things
-- such as monitor settings and cursor config

prequire("envariables/cursor")


--- Access Control

-- Unless you have a good reason(like adding a plugin), you should'nt have to edit this.
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Permissions/
-- Please note permission changes here require a Hyprland restart and are not applied on-the-fly
-- for security reasons

prequire("cfg/permissions")

-- Visual Work (includes misc because it has wallpaper works)

prequire("visuals/vmaster")

-- Per-device configs go here
-- See https://wiki.hypr.land/Configuring/Advanced-and-Cool/Devices/ for more

---- KEYBINDINGS

prequire("cfg/input")
