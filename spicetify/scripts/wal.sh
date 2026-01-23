#!/usr/bin/env bash

# Source pywal colors
source ~/.cache/wal/colors.sh

# Spotify color scheme path
SPOTIFY_THEME_PATH="$HOME/.config/spicetify/Themes/text/color.ini"

# Generate the Spotify-style color.ini
cat > "$SPOTIFY_THEME_PATH" <<EOF
[wal]
accent             = ${color2#\#}
accent-active      = ${color5#\#}
accent-inactive    = ${color0#\#}
banner             = ${color5#\#}
border-active      = ${color5#\#}
border-inactive    = 535353
header             = 535353
highlight          = 1a1a1a
main               = ${color0#\#}
notification       = 4687d6
notification-error = e22134
subtext            = ${color6#\#}
text               = ${color7#\#}
EOF

# Switch to text theme and color set
spicetify config current_theme text color_scheme wal

# Apply changes without opening new instance
spicetify apply --no-restart

