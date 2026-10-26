-- Enable animations globally
hl.config({
    animations = {
        enabled = true,
    },
})

-- Custom Bezier Curves
-- Format: hl.curve(NAME, { type = "bezier", points = { {X0, Y0}, {X1, Y1} } })
hl.curve("easeOutQuint", { type = "bezier", points = { {0.23, 1}, {0.32, 1} } })
hl.curve("easeInOutCubic", { type = "bezier", points = { {0.65, 0.05}, {0.36, 1} } })
hl.curve("linear", { type = "bezier", points = { {0, 0}, {1, 1} } })
hl.curve("almostLinear", { type = "bezier", points = { {0.5, 0.5}, {0.75, 1} } })
hl.curve("quick", { type = "bezier", points = { {0.15, 0}, {0.1, 1} } })
hl.curve("sway", { type = "bezier", points = { {0.2, 1}, {0, 1} } })

-- Animations
-- Format: hl.animation({ leaf = STRING, enabled = BOOLEAN, speed = FLOAT, bezier = STRING[, style = STRING] })
hl.animation({ leaf = "global", enabled = true, speed = 10, bezier = "default" })

hl.animation({ leaf = "border", enabled = true, speed = 5, bezier = "easeOutQuint" })
hl.animation({ leaf = "windows", enabled = true, speed = 5, bezier = "easeOutQuint" })
hl.animation({ leaf = "windowsIn", enabled = true, speed = 1.5, bezier = "linear", style = "popin" })
hl.animation({ leaf = "windowsOut", enabled = true, speed = 1.5, bezier = "linear", style = "popin" })

hl.animation({ leaf = "fade", enabled = true, speed = 1.5, bezier = "almostLinear" })

hl.animation({ leaf = "layers", enabled = true, speed = 5, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersIn", enabled = true, speed = 5, bezier = "easeOutQuint" })
hl.animation({ leaf = "layersOut", enabled = true, speed = 1.5, bezier = "linear" })

hl.animation({ leaf = "workspaces", enabled = true, speed = 10, bezier = "sway", style = "slidevert" })

hl.animation({ leaf = "zoomFactor", enabled = true, speed = 7, bezier = "quick" })
