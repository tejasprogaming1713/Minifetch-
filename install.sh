#!/bin/bash

set -e

REPO="https://raw.githubusercontent.com/tejasprogaming/minifetch/main/minifetch"

echo "Installing MiniFetch..."

# Download
curl -L "$REPO" -o minifetch

# Make executable
chmod +x minifetch

# Move to system path
sudo mv minifetch /usr/local/bin/minifetch

echo "Installation complete ✅"
echo "Run: minifetch"
