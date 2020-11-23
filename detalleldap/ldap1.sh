#!/bin/bash

grep "x:[1-9][0-9][0-9][0-9]" /etc/passwd | (while read TARGET_USER
do
    echo $TARGET_USER
done
)
