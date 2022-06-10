#!/bin/bash

target_dir="pao-kb"
echo "🔰 Started download file and script 📂"
curl -L https://github.com/KhunHtetzNaing/macOS-PaOh-Keyboard/archive/main.zip --output main.zip
unzip -qq main.zip

if [ -d $target ]; then
    rm -rf $target
fi

mv macOS-PaOh-Keyboard-main $target_dir

echo ""
echo "✅ Ready to install 🥳"
echo ""
echo "ℹ️  Usage: "
echo "   [1] cd $target_dir"
echo "   [2] ./paoh_kb.sh install|uninstall"