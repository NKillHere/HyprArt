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

-- Default Apps
ha.vars.default = {
    apps = {
        terminal = "foot -c ".. ha.vars.bottompath.. "/apps/foot/cfg.ini", -- foot by default
        fileExplorer = "thunar", -- thunar by default
        appLauncher = "hyprlauncher", -- rofi by default, will be changed to hyprlauncher whenever they add it as an official package in artix repos
        webBrowser = "flatpak run app.zen_browser.zen", -- zen on flatpak by default, you can change this to the AUR version, but it has systemd as a dependency, so I suggest not to.
        musicPlayer = "audacious"
    },
    startup = {
        wallpaperDaemon = "hyprpaper",
        wallpaper = "hyprpaper -c ".. ha.vars.bottompath.. "/visuals/cache/selected_wallpaper.conf",
        statusBar = "quickshell -c nova"
    },
    discord = "vesktop" -- vesktop by Default, you need to change it to com\.[organisation]\.[app] for the flatpak version as it is used for global app keybinds.
}

