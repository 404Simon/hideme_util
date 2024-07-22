hide() {
    case "$1" in
        check)
            response=$(curl -s https://hide.me/api/geoip)
            if echo "$response" | grep -q '"isConnected":true'; then
                echo "✅ you are connected!"
            else
                echo "❌ be careful out there!"
            fi
            ;;
        connect)
            if [ "$(scutil --nc status "hide.me VPN (Wireguard)" | head -n 1)" = "Connected" ]; then
                echo "You are already connected!"
            else
                echo "Connecting..."
                scutil --nc start "hide.me VPN (Wireguard)"
            fi
            ;;
        disconnect)
            if [ "$(scutil --nc status "hide.me VPN (Wireguard)" | head -n 1)" = "Connected" ]; then
                echo "Disconnecting..."
                osascript ~/dev/hideme_util/disconnect.scpt # change me, im hardcoded
            else
                echo "You are not connected 💀"
            fi
            
            ;;
        *)
            echo "Usage: hide {check|connect|disconnect}"
            return 1
            ;;
    esac
}

_hide() {
    local -a commands
    commands=(check connect disconnect)
    
    if [[ $words[1] == "hide" ]]; then
        _describe -t commands "hide commands" commands
    fi
}

compdef _hide hide
