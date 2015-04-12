#!/bin/bash

# Create a symlink to the correct config
SOURCE=$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )
CONFIG="$SOURCE/config"
if [[ -h $CONFIG ]]; then
    echo "Unlinking $CONFIG"
    $(unlink $CONFIG)
fi

if [ "$1" = "laptop" ] || [ "$1" = "desktop" ]; then
    TARGET="$CONFIG-$1"
    if [[ -f $TARGET ]]; then
        echo "Creating symlink $TARGET --> $CONFIG"
        $(ln -s $TARGET $CONFIG)
    fi
else
    echo "Argument is invalid"
fi

# Installing the i3 dotfiles
TARGET=$HOME"/.i3"
if [[ -h $TARGET ]]; then
    echo "Unlinking $TARGET"
    $(unlink $TARGET)
fi

echo "Creating symlink $SOURCE --> $TARGET"
$(ln -s $SOURCE $TARGET)