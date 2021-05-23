#!/bin/bash

DARK_GREY='#333333bb'
LIGHT_GREY='#999999bb'
BLUE='#008fd6bb'
WHITE='#ffffffbb'
RED='#bb0000bb'

dunstctl set-paused true

i3lock \
    -i "/home/seb/pictures/wallpapers/arch_dark.jpg" \
    --nofork \
    --tiling \
    --pass-media-keys \
    --wrong-font="Noto Sans Display Light" \
    --layout-font="Noto Sans Display Light" \
    --verif-font="Noto Sans Display Light" \
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

dunstctl set-paused false
