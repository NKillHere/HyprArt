local default = require("cfg/defaults")

hl.on("hyprland.start", function()
  hl.exec_cmd(default.statusBar + "& awww-daemon")
end)
