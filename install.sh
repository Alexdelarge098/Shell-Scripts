#!/bin/bash

PKG_LIST="packages.txt"
LOG_FILE="install_log.txt"

> "$LOG_FILE"   # Clear the log file

while read pkg; do
    [ -z "$pkg" ] && continue   # skip empty lines

    echo "Installing $pkg..." | tee -a "$LOG_FILE"

    if sudo apt install -y "$pkg" >> "$LOG_FILE" 2>&1; then
        echo "$pkg installed successfully" | tee -a "$LOG_FILE"
    else
        echo "Failed to install $pkg" | tee -a "$LOG_FILE"
    fi
done < "$PKG_LIST"

echo "Installation completed! Log saved in $LOG_FILE"
