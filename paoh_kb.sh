#!/bin/bash

# PaOh Keyboard for macOS
# Author: Khun San Htet Aung (fb.com/khunsan.htetaung)
# Bash script: Khun Htetz Naing (fb.com/iamHtetz)

open_kb_pref(){
    # Open keyboard Preferences from terminal ref: https://apple.stackexchange.com/a/250276
    osascript -e "tell application \"System Preferences\"" -e "set the current pane to pane id \"com.apple.preference.keyboard\"" -e "reveal anchor \"InputSources\" of pane id \"com.apple.preference.keyboard\"" -e "activate"  -e "end tell"
}

install(){
    # Copy PaOh.bundle file to ~/Library/Keyboard Layouts
    # PaOh.bundle file is created with Ukelele: https://software.sil.org/ukelele/
    if cp -r PaOh.bundle ~/Library/Keyboard\ Layouts; then
        echo "- Copied keyboard layout ✅"
        open_kb_pref
        echo "- Now, you need to add \"PaOh\" in \"Input Sources\" ℹ️"
        echo ""
        echo "Pressing (Ctrl + Space) to change keyboard layout!"
    else
        echo "- Copy PaOh.bundle to ~/Library/Keyboard Layouts failed"
    fi
}

uninstall(){
    target=~/Library/Keyboard\ Layouts/PaOh.bundle
    if [ -d "$target" ]; then
        if rm -rf "$target"; then
            echo "- Removed $target ✅"
        else
            echo "- Failed to delete $target"
        fi
    else
        echo "- Not installed yet!"
        usage
    fi
}

usage(){
    echo "Usage: ./paoh_kb.sh install|uninstall"
}

case $1 in
install)
    install
    ;;

uninstall)
    uninstall
    ;;
*)
    usage
    ;;
esac