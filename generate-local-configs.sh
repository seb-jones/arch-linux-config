#!/bin/bash

LOCAL_SETTINGS_FILE="local-settings"
FILE=""

LINES="$(grep -vE "(^#|^\s*$)" $LOCAL_SETTINGS_FILE)"

echo "$LINES" | while read LINE
do
    echo "$LINE" | grep -qE "^\s*\[\s*.*\s*\]\s*$"

    if [ $? -eq 0 ]
    then

        FILE=$(echo "$LINE" | sed -E -e 's/(\[|\])//g')
        echo $FILE
        exit 1

    elif [ -n $FILE ]
    then

        KEY=$(echo "$LINE" | grep -oE "^[^=]+")
        VALUE=$(echo "$LINE" | grep -oE "[^=]+$")

        cp $FILE-template $FILE

        sed -i -e "s/%%$KEY%%/$VALUE/" $FILE

    fi
done

exit 0
