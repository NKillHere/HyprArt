prequire("cfg/defaults")

hl.on("hyprland.start", function()
    hl.exec_cmd(ha.vars.default.statusBar .. " && awww-daemon")
    hl.exec_cmd("wl-paste --type text --watch cliphist store")
    hl.exec_cmd("wl-paste --type image --watch cliphist store")
    hl.exec_cmd("hyprpm reload")
end)
