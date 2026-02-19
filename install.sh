#!/bin/bash

set -e

APP_NAME="minifetch"
INSTALL_PATH="/usr/local/bin/$APP_NAME"
REPO_URL="https://raw.githubusercontent.com/tejasprogaming1713/minifetch-/main/minifetch"

echo "================================="
echo "      Installing MiniFetch"
echo "================================="

Check sudo

if [ "$EUID" -ne 0 ]; then
echo "Please run with sudo:"
echo "sudo bash install.sh"
exit 1
fi

Check curl

if ! command -v curl >/dev/null 2>&1; then
echo "Installing curl..."
apt update -y && apt install curl -y
fi

Download binary/script

echo "Downloading MiniFetch..."
curl -L "$REPO_URL" -o "$APP_NAME"

Make executable

chmod +x "$APP_NAME"

Move to system path

mv "$APP_NAME" "$INSTALL_PATH"

Create command aliases

ln -sf "$INSTALL_PATH" /usr/local/bin/MiniFetch
ln -sf "$INSTALL_PATH" /usr/local/bin/MINIFETCH
ln -sf "$INSTALL_PATH" /usr/local/bin/mf

echo ""
echo "✅ Installation complete!"
echo ""
echo "You can now run:"
echo "  minifetch"
echo "  MiniFetch"
echo "  mf"
echo ""
echo "Enjoy 🎉"
