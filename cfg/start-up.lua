prequire("cfg/defaults")

hl.on("hyprland.start", function()
    hl.exec_cmd(default.statusBar .. " && awww-daemon")
    hl.exec_cmd("hyprpm reload")
end)
