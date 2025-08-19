#!/bin/bash

echo "🔄 Updating system..."
sudo pacman -Syu --noconfirm

echo "📦 Installing core system packages..."
sudo pacman -S --noconfirm \
    base-devel \
    git \
    wget \
    curl \
    unzip \
    nano \
    neofetch \
    htop \
    vlc \
    libreoffice-fresh \
    libreoffice-fresh-en \
    code \
    firefox \
    flatpak

echo "🐍 Installing Python & tools..."
sudo pacman -S --noconfirm python python-pip
pip install --user virtualenv ipython

echo "🧠 Installing VS Code Python extension..."
code --install-extension ms-python.python

echo "📦 Setting up Flatpak and Flathub..."
sudo flatpak remote-add --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo

echo "✅ Python workstation setup complete."
echo "🔁 You may want to reboot your system."

