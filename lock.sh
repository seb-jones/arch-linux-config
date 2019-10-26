#!/bin/sh

DARK_GREY='#333333bb'
LIGHT_GREY='#999999bb'
BLUE='#008fd6bb'
WHITE='#ffffffbb'
RED='#bb0000bb'

notify-send "DUNST_COMMAND_PAUSE"

i3lock \
    -n \
    -i ~/.config/screen-lock-overlay.png \
    -t \
    --insidecolor=$DARK_GREY      \
    --ringcolor=$BLUE        \
    --linecolor=$LIGHT_GREY        \
    --separatorcolor=$BLUE   \
    --insidevercolor=$DARK_GREY   \
    --ringvercolor=$WHITE     \
    --insidewrongcolor=$DARK_GREY \
    --ringwrongcolor=$RED   \
    --verifcolor=$WHITE        \
    --wrongcolor=$WHITE        \
    --keyhlcolor=$WHITE       \
    --timecolor=$WHITE        \
    --datecolor=$WHITE        \
    --bshlcolor=$DARK_GREY        \
    --clock \
    --indicator           \
    --blur 6             

notify-send "DUNST_COMMAND_RESUME"
