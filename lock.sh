#!/bin/bash

if [ -e '/home/seb/.fehbg' ]
then

    IMAGE=`grep -o "'[^']*\.png'" /home/seb/.fehbg | sed -E -e "s/(^'|'$)//g"`

    # Make image path absolute if it is relative
    echo "$IMAGE" | grep -E '(^/|^~)' || IMAGE="/home/seb/$IMAGE"

    # If $IMAGE is a valid file, lock with it
    ls "$IMAGE" 2> /dev/null
    if [ $? -eq 0 ]
    then
        i3lock -tiling -i $IMAGE
        exit 0
    fi

fi
        
i3lock
