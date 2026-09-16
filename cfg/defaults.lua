-- Just change these if you want to swap things around, like "foot" to "kitty". Just remember that it executes that as a command when activated,
-- so for rofi you need to do "rofi -show drun" as without it, it won't work.
-- Read the wiki for more info: -> https://wiki.hypr.land/configuring/core/dispatchers/#general:exec_cmd

-- Input Settings
hl.config({
    input = {
        kb_layout  = "us",
        kb_variant = "",
        kb_model   = "",
        kb_options = "",
        kb_rules   = "",

        follow_mouse = 1,

        sensitivity = 0, -- -1.0 - 1.0, 0 is raw input

        touchpad = {
            natural_scroll = true,
        },--
    },
})

-- Autostarting Apps

local startupWallpaper = "awww-daemon" -- May not be needed whenever I swap to hyprpaper

-- Default Apps
default = {
    apps = {
        terminal = "foot", -- foot by default
        fileExplorer = "thunar", -- thunar by default
        appLauncher = "rofi -show drun", -- rofi by default
        webBrowser = "flatpak run app.zen_browser.zen", -- zen on flatpak by default, you can change this to the AUR version
    },
    statusBar = "waybar",
    discord = "vesktop", -- vesktop by Default, you need to change it to com\.[organisation]\.[app] for the flatpak version as it is used for global app keybinds.
}
