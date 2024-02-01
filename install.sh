#!/usr/bin/env bash

os="$(uname | tr '[:upper:]' '[:lower:]')"

# Check for GUI environment variables
if env | grep -q -E -i 'x11|xorg|wayland'; then
    gui=1
else
    gui=0
fi

# Define directories and their corresponding parameters
declare -A dirs=(
    ["terminal_general"]=1
    ["terminal_linux"]=0
    ["gui_general"]=0
    ["gui_linux"]=0
)

case "$os" in
darwin)
    dirs["gui_general"]=1
    ;;
linux)
    dirs["terminal_linux"]=1
    ;;
*) ;;
esac

case $gui in
1)
    dirs["gui_general"]=1
    dirs["gui_linux"]=1
    ;;
*) ;;
esac

# Parse arguments to determine which directories to stow
for dir in "${!dirs[@]}"; do
    if [ "${dirs[$dir]}" -eq 1 ]; then
        stow_dirs+=("$dir")
    fi
done

# Stow directories
for dir in "${stow_dirs[@]}"; do
    find "$dir" -maxdepth 1 ! -path "$dir" -type d -not -name '.' | while read -r subdir; do
        printf "Stowing %s\n" "${subdir#"$dir"/}"
        stow --target="$HOME" --dir="$dir" "${subdir#"$dir"/}"
    done
done
