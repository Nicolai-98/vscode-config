#!/bin/bash

# Define VS Code settings paths for Linux
VS_CODE_PATH="$HOME/.config/Code/User"

# Define the source files (current directory)
KEYBINDINGS_SOURCE="$(pwd)/keybindings.json"
SETTINGS_SOURCE="$(pwd)/settings.json"
SNIPPETS_SOURCE="$(pwd)/ros2.code-snippets"

# Check if keybindings.json and settings.json exist in the current directory
if [[ ! -f "$KEYBINDINGS_SOURCE" ]]; then
    echo "keybindings.json not found in the current directory."
    exit 1
fi

if [[ ! -f "$SETTINGS_SOURCE" ]]; then
    echo "settings.json not found in the current directory."
    exit 1
fi

if [[ ! -f "$SNIPPETS_SOURCE" ]]; then
    echo "snippets not found in the current directory."
    exit 1
fi

# Overwrite the existing keybindings.json and settings.json in VS Code directory
cp -f "$KEYBINDINGS_SOURCE" "$VS_CODE_PATH/keybindings.json"
echo "keybindings.json has been updated!"

cp -f "$SETTINGS_SOURCE" "$VS_CODE_PATH/settings.json"
echo "settings.json has been updated!"

cp -f "$SNIPPETS_SOURCE" "$VS_CODE_PATH/snippets/ros2.code-snippets"
echo "code snippets have been updated!"
