#!/bin/sh

dockutil --no-restart --remove all
dockutil --no-restart --add "/System/Applications/Brave Browser.app"
dockutil --no-restart --add "/System/Applications/Firefox.app"
dockutil --no-restart --add "/System/Applications/Zed.app"
dockutil --no-restart --add "/System/Applications/kitty.app"
dockutil --no-restart --add "/System/Applications/OrbStack.app"
dockutil --no-restart --add "/System/Applications/Insomnia.app"
dockutil --no-restart --add "/System/Applications/Discord.app"
dockutil --no-restart --add "/System/Applications/Beekeeper Studio.app"
dockutil --no-restart --add "/System/Applications/Spotify.app"
dockutil --no-restart --add "/System/Applications/Notes.app"
dockutil --no-restart --add "/System/Applications/Messages.app"
dockutil --no-restart --add "/System/Applications/System Settings.app"
dockutil --no-restart --add "/Applications/Spotify.app"

killall Dock
