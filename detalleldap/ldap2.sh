#!/bin/bash

grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
    echo $TARGET_USER
    USER_ID="$(echo "$TARGET_USER" | cut -d':' -f1)"
    echo USER_ID=$USER_ID
done
)
