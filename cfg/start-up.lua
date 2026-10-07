prequire("cfg/defaults")

hl.on("hyprland.start", function()
    hl.exec_cmd(ha.vars.default.startup.statusBar)
    hl.exec_cmd(ha.vars.default.startup.wallpaperDaemon.. " | ".. ha.vars.default.startup.wallpaper)
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("cliphist wipe") -- clear clipboard every start
    hl.exec_cmd("hyprpm reload")
end)
