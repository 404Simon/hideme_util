# Hide.me Util

Simple script to connect, disconnect and check the status of your hide.me VPN connection from the commandline.
Disconnect uses applescript to 'click' the disconnect button in the hide.me app, so no 'connection dropped'-popup will appear.

This only works on macOS with zsh.

## Usage

```bash
$ hide connect
$ hide disconnect
$ hide check
```

Autocompletion is available :)

## Installation

To 'install' just clone the repo and source the .sh file in your .zshrc.
The path to the apple script file is hardcoded in the .sh file, you might need to change that.

