#!/bin/bash

set -e

echo "Installing MiniFetch..."

# Make executable
chmod +x minifetch

# Move to system path
sudo mv minifetch /usr/local/bin/minifetch

echo "Done ✅"
echo "Run: minifetch"
