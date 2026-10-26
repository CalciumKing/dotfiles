-- Application binds
hl.bind("SUPER + RETURN", hl.dsp.exec_cmd("kitty"))
hl.bind("SUPER + Q", hl.dsp.window.close())
hl.bind("SUPER + V", hl.dsp.window.float({ action = "toggle" }))
hl.bind("SUPER + D", hl.dsp.exec_cmd('rofi -show drun -display-drun ">"'))
hl.bind("SUPER + G", hl.dsp.exec_cmd("kitty -e yazi"))
hl.bind("SUPER + F", hl.dsp.window.fullscreen({ mode = "maximized" }))
hl.bind("SUPER + SHIFT + F", hl.dsp.window.fullscreen({ mode = "fullscreen" }))

-- Utility binds
hl.bind("SUPER + R", hl.dsp.exec_cmd("~/.config/waybar/scripts/launch.sh"))
hl.bind("F7", hl.dsp.exec_cmd("~/Desktop/scripts/hdmi.sh"))
hl.bind("SUPER + S", hl.dsp.exec_cmd([[sh -c 'pgrep -x spotify >/dev/null && hyprctl dispatch focuswindow "class:^(Spotify)$" || spotify']]))
hl.bind("SUPER + C", hl.dsp.exec_cmd("hyprpicker"))
hl.bind("SUPER + I", hl.dsp.exec_cmd([[sh -c 'pgrep -x idea >/dev/null && hyprctl dispatch focuswindow "class:^(jetbrains-idea)$" || ~/.local/share/JetBrains/Toolbox/apps/intellij-idea/bin/idea.sh']]))
hl.bind("PRINT", hl.dsp.exec_cmd("flameshot gui"), { release = true })
hl.bind("SUPER + P", hl.dsp.exec_cmd("flameshot gui"))
hl.bind("SUPER + L", hl.dsp.exec_cmd("hyprlock"))

-- Move focus with arrow keys
hl.bind("SUPER + left", hl.dsp.focus({ direction = "l" }))
hl.bind("SUPER + right", hl.dsp.focus({ direction = "r" }))
hl.bind("SUPER + up", hl.dsp.focus({ direction = "u" }))
hl.bind("SUPER + down", hl.dsp.focus({ direction = "d" }))

-- Swapping windows with arrow keys
hl.bind("SUPER + SHIFT + left", hl.dsp.window.swap({ direction = "l" }))
hl.bind("SUPER + SHIFT + right", hl.dsp.window.swap({ direction = "r" }))
hl.bind("SUPER + SHIFT + up", hl.dsp.window.swap({ direction = "u" }))
hl.bind("SUPER + SHIFT + down", hl.dsp.window.swap({ direction = "d" }))

-- Switch workspaces
for i = 1, 10 do
    local key = i % 10  -- maps 10 to 0
    hl.bind("SUPER + " .. key, hl.dsp.focus({ workspace = tostring(i) }))
end

-- Move window to workspace
for i = 1, 10 do
    local key = i % 10
    hl.bind("SUPER + SHIFT + " .. key, hl.dsp.window.move({ workspace = tostring(i) }))
end

-- Scroll through existing workspaces
hl.bind("SUPER + mouse_up", hl.dsp.focus({ workspace = "e-1" }))
hl.bind("SUPER + mouse_down", hl.dsp.focus({ workspace = "e+1" }))

-- Move/resize windows with mouse buttons
hl.bind("SUPER + mouse:272", hl.dsp.window.drag(), { mouse = true })
hl.bind("SUPER + mouse:273", hl.dsp.window.resize(), { mouse = true })

-- Laptop keys for volume and brightness
hl.bind("XF86AudioRaiseVolume", hl.dsp.exec_cmd("wpctl set-volume -l 1 @DEFAULT_AUDIO_SINK@ 5%+"), { release = true })
hl.bind("XF86AudioLowerVolume", hl.dsp.exec_cmd("wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-"), { release = true })
hl.bind("XF86AudioMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle"), { release = true })
hl.bind("XF86AudioMicMute", hl.dsp.exec_cmd("wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle"), { release = true })
hl.bind("XF86MonBrightnessUp", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%+"), { release = true })
hl.bind("XF86MonBrightnessDown", hl.dsp.exec_cmd("brightnessctl -e4 -n2 set 5%-"), { release = true })

-- Laptop keys for changing song
hl.bind("XF86AudioNext", hl.dsp.exec_cmd("playerctl next"), { locked = true })
hl.bind("XF86AudioPause", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPlay", hl.dsp.exec_cmd("playerctl play-pause"), { locked = true })
hl.bind("XF86AudioPrev", hl.dsp.exec_cmd("playerctl previous"), { locked = true })
