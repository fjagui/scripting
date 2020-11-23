#!/bin/bash
clear
grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
    echo "PROCESAMOS TARGET_USER: $TARGET_USER"
    echo "----------"
    USER_ID="$(echo "$TARGET_USER" | cut -d':' -f1)"
    grep "${USER_ID}:" /etc/shadow
    
    LASTCHANGE_FLAG="$(grep "${USER_ID}:" /etc/shadow | cut -d':' -f3)"
    echo "\$(grep \"\${USER_ID}:\" /etc/shadow"
    echo "LASTCHANGE_FLAG=\"\$(grep \"\${USER_ID}:\" /etc/shadow | cut -d':' -f3)\" "
    echo "LATCHANGE_FLAG=$LASTCHANGE_FLAG"
   
    SHADOW_FLAG="$(grep "${USER_ID}:" /etc/shadow | cut -d':' -f9)"
    echo "\$(grep \"\${USER_ID}:\" /etc/shadow"
    echo "SHADOW_FLAG=\"\$(grep \"\${USER_ID}:\" /etc/shadow | cut -d':' -f9)\" "
    echo "SHADOW_FLAG=$SHADOW_FLAG"
    echo "=========="
    echo ""
done
)
