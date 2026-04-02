#!/bin/bash
# Fix fonts for WezTerm on Linux

mkdir -p ~/.local/share/fonts/NotoSansMono

# Try tar.xz first, then zip
wget -O /tmp/NotoSansMono.tar.xz "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/NotoSansMono.tar.xz" && \
    tar -xf /tmp/NotoSansMono.tar.xz -C ~/.local/share/fonts/NotoSansMono/ && \
    rm /tmp/NotoSansMono.tar.xz || \
wget -O /tmp/NotoSansMono.zip "https://github.com/ryanoasis/nerd-fonts/releases/download/v3.3.0/NotoSansMono.zip" && \
    unzip -o /tmp/NotoSansMono.zip -d ~/.local/share/fonts/NotoSansMono/ && \
    rm /tmp/NotoSansMono.zip

# Cairo font
sudo apt install -y fonts-cairo

# Rebuild font cache
fc-cache -fv

echo ""
echo "Done. Close and reopen WezTerm."
