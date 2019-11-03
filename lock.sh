#!/bin/sh

DARK_GREY='#333333bb'
LIGHT_GREY='#999999bb'
BLUE='#008fd6bb'
WHITE='#ffffffbb'
RED='#bb0000bb'

notify-send "DUNST_COMMAND_PAUSE"

IMAGE_DIRECTORY=~/pictures/wallpapers/pokemon-fusion-frames
IMAGE_COUNT=$(ls "$IMAGE_DIRECTORY" | grep 'fs8\.png$' | wc -l)
IMAGE_FILENAME=$(printf "%05d-fs8.png" $((1 + RANDOM % $IMAGE_COUNT)))
IMAGE_PATH="$IMAGE_DIRECTORY/$IMAGE_FILENAME"

if [[ ! -f $IMAGE_PATH ]]; then
    IMAGE_PATH="$IMAGE_DIRECTORY/00001-fs8.png"
fi

i3lock \
    -i $IMAGE_PATH \
    --nofork \
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

notify-send "DUNST_COMMAND_RESUME"
