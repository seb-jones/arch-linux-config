#!/bin/bash

if [ -e '/home/seb/.fehbg' ]
then
    IMAGE=`grep -o \/.*\.png /home/seb/.fehbg`

    if [ $? -eq 0 ]
    then
        i3lock -i $IMAGE
        exit 0
    fi
fi
        
i3lock
