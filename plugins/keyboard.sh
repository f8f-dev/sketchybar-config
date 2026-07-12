#!/bin/bash

SOURCE=$(defaults read ~/Library/Preferences/com.apple.HIToolbox.plist AppleCurrentKeyboardLayoutInputSourceID 2>/dev/null)

case "$SOURCE" in
    *ABC*|*US*)     ICON="EN" ;;
    *Russian*)      ICON="RU" ;;
    *)              ICON="${SOURCE##*.}" ;;
esac

sketchybar --set "$NAME" label="$ICON"
