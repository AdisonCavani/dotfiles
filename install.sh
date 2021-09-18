#! /bin/bash

# Load gnome-terminal profile
dconf load /org/gnome/terminal/legacy/profiles:/:3c3e9364-aade-4e49-9086-31f4b686baa5/ < gnome-terminal/adison-theme-profile.dconf

# Create directories for images
mkdir -p ~/Pictures/Wallpapers/
mkdir -p ~/Pictures/Others/

# Copy images
cp -r img/gt3-rs.jpg ~/Pictures/Wallpapers/
cp -r img/Adison.jpg ~/Pictures/Others/

# Create directory for Keepass database
mkdir -p ~/Documents/KeepassXC/

# Override ZorinGrey-Dark gnome shell theme - fix dock appearance
sudo cp -r gnome-shell/gnome-shell.css /usr/share/themes/ZorinGrey-Dark/gnome-shell/

# Override pacman config - enable Color and ParallelDownloads
sudo cp -r etc/pacman.conf /etc/

# Override paru config - change sorting
sudo cp -r etc/paru.conf /etc/

# Create repos directory
mkdir -p ~/repos