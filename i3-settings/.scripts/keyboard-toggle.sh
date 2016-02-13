#! /bin/bash 
file="/home/jacob/.i3/.scripts/keyboard-setting.txt"

if [ ! -f "$file" ]; then
    echo "dk" > $file; 
fi

key=$(cat "$file")
if [ "$key" = "gb" ]; then
    setxkbmap dk
    echo "dk" > $file
else
    setxkbmap gb
    echo "gb" > $file
fi
