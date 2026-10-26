-- Variables
local mainMod = "SUPER"
local terminal = "kitty"
local fileManager = "kitty -e yazi"
local screenshot = "flameshot gui"

-- Environment Variables
hl.env("XCURSOR_SIZE", "24")
hl.env("HYPRCURSOR_SIZE", "24")

-- Source other configuration modules
require("modules.autostart")
require("modules.visuals")
require("modules.animations")
require("modules.windows")
require("modules.inputs")
require("modules.keybinds")
require("modules.gestures")
require("modules.misc")
