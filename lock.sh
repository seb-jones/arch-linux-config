#!/bin/sh

DARK_GREY='#333333bb'
LIGHT_GREY='#999999bb'
BLUE='#008fd6bb'
WHITE='#ffffffbb'
RED='#bb0000bb'

notify-send "DUNST_COMMAND_PAUSE" &

i3lock \
    -i ~/.config/screen-lock-overlay.png \
    --tiling \
    --nofork \
    --pass-media-keys \
    --indicator \
    --clock \
    --timestr="%l:%M%p" \
    --timepos="ix:iy - 10" \
    --datestr="%A %e %B" \
    --datesize=22 \
    --datepos="tx:ty + 40" \
    --blur 6 \
    --radius 150 \
    --insidecolor=$DARK_GREY \
    --ringcolor=$BLUE \
    --linecolor=$LIGHT_GREY \
    --separatorcolor=$BLUE \
    --insidevercolor=$DARK_GREY \
    --ringvercolor=$WHITE \
    --insidewrongcolor=$DARK_GREY \
    --ringwrongcolor=$RED \
    --verifcolor=$WHITE \
    --wrongcolor=$WHITE \
    --keyhlcolor=$WHITE \
    --timecolor=$WHITE \
    --datecolor=$WHITE \
    --bshlcolor=$DARK_GREY

notify-send "DUNST_COMMAND_RESUME"
