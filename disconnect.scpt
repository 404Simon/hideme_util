tell application "System Events"
    tell process "hide.me VPN"
        click menu bar item 1 of menu bar 2
        delay 0.1
        click menu item "Disconnect" of menu 1 of menu bar item 1 of menu bar 2
    end tell
end tell
