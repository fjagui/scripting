#!/bin/bash

grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
    echo "PROCESAMOS TARGET_USER: $TARGET_USER"
    USER_ID="$(echo "$TARGET_USER" | cut -d':' -f1)"
    USER_NAME="$(echo "$TARGET_USER" | cut -d':' -f5 | cut -d',' -f1 )"
    [ ! "$USER_NAME" ] && USER_NAME="$USER_ID"
    echo '$(echo "$TARGET_USER" | cut -d':' -f5 | cut -d',' -f1 )"'
    echo "USER_ID=$USER_NAME"
done
)
