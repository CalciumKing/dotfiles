hl.on("hyprland.start", function()
    hl.exec_cmd("kitty")    
    hl.exec_cmd("waypaper --restore")
    hl.exec_cmd("~/.config/waybar/scripts/launch.sh")
    hl.exec_cmd("udiskie")
    hl.exec_cmd("kitty -e btop") -- This will launch on the current workspace.
end)
