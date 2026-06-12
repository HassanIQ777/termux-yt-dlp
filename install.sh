#!/data/data/com.termux/files/usr/bin/bash

PROG_NAME="Termux YT DLP"
echo " ----- Started Installer ----- "
echo "Installing $PROG_NAME..."
NEW_PATH="$HOME/bin/"
SCRIPT_NAME="termux-url-opener"

chmod +x install.sh termux-url-opener
mkdir -p "$HOME/bin"

echo "Copying '$SCRIPT_NAME' to '$NEW_PATH'"
if cp "$SCRIPT_NAME" "$NEW_PATH"; then
    echo "Successfully installed $PROG_NAME!"
    echo "Note: if you make any updates or changes to '$SCRIPT_NAME', just rerun the install script!"
else
    echo "Failed to install $PROG_NAME"
fi