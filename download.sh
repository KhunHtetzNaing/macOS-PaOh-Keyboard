#!/bin/bash

target_dir="pao-kb"
echo "🔰 Started download file and script 📂"

# Download repo
curl -L https://github.com/KhunHtetzNaing/macOS-PaOh-Keyboard/archive/main.zip --output main.zip

# Unzip
unzip -qq main.zip

# Delete if exists
if [ -d $target ]; then
    rm -rf $target
fi

# Rename directory
mv macOS-PaOh-Keyboard-main $target_dir

# Delete repo zip
rm -f main.zip

echo ""
echo "✅ Ready to install 🥳"
echo ""
echo "ℹ️  Usage: "
echo "   [1] cd $target_dir"
echo "   [2] ./paoh_kb.sh install|uninstall"