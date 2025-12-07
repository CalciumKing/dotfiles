#!/bin/bash

max_length=${1:-20}   # default max length per field

status=$(playerctl --player=spotify status 2>/dev/null)
artist=$(playerctl --player=spotify metadata artist 2>/dev/null)
title=$(playerctl --player=spotify metadata title 2>/dev/null)

# truncate each field separately
if [ ${#title} -gt $max_length ]; then
    title="${title:0:max_length}..."
fi

if [ ${#artist} -gt $max_length ]; then
    artist="${artist:0:max_length}..."
fi

# output
echo "$title - $artist"
