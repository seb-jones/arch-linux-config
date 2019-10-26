#!/bin/sh

DARK_GREY='#333333bb'
LIGHT_GREY='#999999bb'
BLUE='#008fd6bb'
WHITE='#ffffffbb'
RED='#bb0000bb'

i3lock \
--insidecolor=$DARK_GREY      \
--ringcolor=$BLUE        \
--linecolor=$LIGHT_GREY        \
--separatorcolor=$BLUE   \
\
--insidevercolor=$DARK_GREY   \
--ringvercolor=$WHITE     \
\
--insidewrongcolor=$DARK_GREY \
--ringwrongcolor=$RED   \
\
--verifcolor=$WHITE        \
--wrongcolor=$WHITE        \
--keyhlcolor=$WHITE       \
--timecolor=$WHITE        \
--datecolor=$WHITE        \
--bshlcolor=$DARK_GREY        \
--clock \
--indicator           \
--blur 6             
# --layoutcolor=$DARK_GREY      \
# --keylayout 2         
# --screen 1            \
# --timestr="%H:%M:%S"  \
# --datestr="%A, %m %Y" \
# --clock               \
# --veriftext="Drinking verification can..."
# --wrongtext="Nope!"
# --textsize=20
# --modsize=10
# --timefont=comic-sans
# --datefont=monofur
# etc
