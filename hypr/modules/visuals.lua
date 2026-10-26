local colors = require("~/.cache/wal/colors-hyprland")

hl.config({
    general = {
        col = {
            active_border   = colors.color4,
            inactive_border = colors.color1,
        },
    },
})

hl.config({
    general = {
        gaps_in = 5,
        gaps_out = 7,
        border_size = 2,
        col = {
            active_border = colors.color4,
            inactive_border = colors.color1
        },
        resize_on_border = false,
        allow_tearing = false,
        layout = "dwindle"
    },
    decoration = {
        rounding = 10,
        rounding_power = 2,
        active_opacity = 1.0,
        inactive_opacity = 0.85,
        shadow = {
            enabled = false,
            range = 4,
            render_power = 3,
            color = "rgba(1a1a1aee)"
        },
        blur = {
            enabled = true,
            size = 18,
            passes = 1,
            vibrancy = 0.1696
        }
    }
})
