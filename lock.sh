#!/bin/bash

if [ -e '/home/seb/.fehbg' ]
then
    IMAGE=`grep -o "'[^']*\.png'" /home/seb/.fehbg | sed -E -e "s/(^'|'$)//g"`
    IMAGE="/home/seb/$IMAGE"

    if [ $? -eq 0 ]
    then
        i3lock -tiling -i $IMAGE
        exit 0
    fi
fi
        
i3lock
