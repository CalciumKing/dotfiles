-- Suppress maximize requests from apps
hl.window_rule({
    name = "suppress-maximize-events",
    match = { class = ".*" },
    suppress_event = "maximize"
})

-- Fix some dragging issues with XWayland
-- hl.window_rule({
--     match = { class = "^$", title = "^$", xwayland = true, float = true, fullscreen = false, pin = false },
--     no_focus = true
-- })

-- "Smart gaps" / "No gaps when only"
-- hl.workspace_rule({ workspace = "w[tv1]", gaps_out = 0, gaps_in = 0 })
-- hl.workspace_rule({ workspace = "f[1]", gaps_out = 0, gaps_in = 0 })
-- hl.window_rule({ match = { float = false, workspace = "w[tv1]" }, border_size = 0, rounding = 0 })
-- hl.window_rule({ match = { float = false, workspace = "f[1]" }, border_size = 0, rounding = 0 })

-- Custom rule: windows with title "float" open floating, centered
hl.window_rule({
    name = "float-title",
    match = { title = "float" },
    float = true,
    size = "900 600",
    center = true
})

-- Custom rule: blueman-manager opens floating, centered
hl.window_rule({
    name = "float-blueman",
    match = { class = "blueman-manager" },
    float = true,
    size = "900 600",
    center = true
})

-- Master layout settings
hl.config({
    master = {
        new_status = "master"
    }
})
