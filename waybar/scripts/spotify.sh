#!/usr/bin/env bash

STATUS=$(playerctl -p spotify status 2>/dev/null)
[ -z "$STATUS" ] && exit 0

ARTIST=$(playerctl -p spotify metadata artist)
TITLE=$(playerctl -p spotify metadata title)
ALBUM=$(playerctl -p spotify metadata album)

ICON=""
CLASS="paused"

if [ "$STATUS" = "Playing" ]; then
  ICON=""
  CLASS="playing"
fi

# Output JSON with tooltip
echo "{\"text\": \"$ICON $ARTIST - $TITLE ($ALBUM)\", \"tooltip\": \"$ICON $ARTIST - $TITLE ($ALBUM)\", \"class\": \"$CLASS\"}"
