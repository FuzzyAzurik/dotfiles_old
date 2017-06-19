#! /bin/bash 
file="/home/jacob/.i3/scripts/keyboard-setting.txt"

if [ ! -f "$file" ]; then
    echo "dk" > $file; 
fi

key=$(cat "$file")
setxkbmap "$key"

if [ "$key" = "gb" ]; then
    echo "dk" > $file
else
    echo "gb" > $file
fi
