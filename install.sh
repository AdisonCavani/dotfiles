#! /bin/bash

GREEN='\033[0;32m'
RED='\033[0;31m'
BLUE='\033[0;34m'
PURPLE='\033[0;35m'
NC='\033[0m' # No Color

read -p "Install packages? [Y/n] " pkg

if [[ "$pkg" == "y" || "$pkg" == "Y" ]]; then
    # Install git and base-devel
    if ! [ -x "$(command -v git)" ]; then
        echo -e "${GREEN}Installing git${NC}"
        sudo pacman -S git
        sudo pacman -S base-devel
    fi

    # Install paru - AUR helper
    if ! [ -x "$(command -v paru)" ]; then
        echo -e "${GREEN}Installing paru${NC}"
        cd ~
        git clone https://aur.archlinux.org/paru.git
        cd paru
        makepkg -si
    fi

    # Install base packages
    echo -e "${GREEN}Installing extra packages${NC}"
    paru -S gnome-terminal chrome-gnome-shell chromium discord_arch_electron etcher-bin firefox fastfetch gdm-plymouth gimp github-desktop-bin grub-customizer gufw keepassxc memtest86-efi neovim nerd-fonts-cascadia-code ntfs-3g ocs-url oh-my-zsh-git plymouth-git qbittorrent reflector seahorse spotify spotify-adblock-git teams torbrowser-launcher ttf-ms-fonts vscodium-bin vscodium-bin-marketplace zoom zsh zsh-completions zorin-desktop-themes-git
fi

# Load gnome-terminal profile
echo -e "${GREEN}Loading gnome-terminal profile${NC}"
dconf load /org/gnome/terminal/legacy/profiles:/:3c3e9364-aade-4e49-9086-31f4b686baa5/ < gnome-terminal/adison-theme-profile.dconf

# Create directories for images
echo -e "${GREEN}Creating images directories${NC}"
mkdir -p ~/Pictures/Wallpapers/
mkdir -p ~/Pictures/Others/

# Copy images
echo -e "${GREEN}Copying images${NC}"
cp -r img/gt3-rs.jpg ~/Pictures/Wallpapers/
cp -r img/Adison.jpg ~/Pictures/Others/

# Create directory for Keepass database
echo -e "${GREEN}Creating KeepassXC${NC}"
mkdir -p ~/Documents/KeepassXC/

# Override ZorinGrey-Dark gnome shell theme - fix dock appearance
echo -e "${GREEN}Overriding gnome-shell theme${NC}"
sudo cp -r gnome-shell/gnome-shell.css /usr/share/themes/ZorinGrey-Dark/gnome-shell/

# Override pacman config - enable Color and ParallelDownloads
echo -e "${GREEN}Overriding pacman config${NC}"
sudo cp -r etc/pacman.conf /etc/

# Override paru config - change sorting
echo -e "${GREEN}Overriding paru config${NC}"
sudo cp -r etc/paru.conf /etc/

# Create repos directory
echo -e "${GREEN}Creating repos directory${NC}"
mkdir -p ~/repos

# Override nvim config
echo -e "${GREEN}Overriding nvim config${NC}"
sudo cp -r .config/nvim/ ~/.config/nvim

# Remove unused packages
echo -e "${GREEN}Removing unused packages${NC}"
sudo pacman -Qtdq | sudo pacman -Rns -

if ![ -x "$(command -v reflector)"]; then
    echo -e "${GREEN}Installing reflector${NC}"
    sudo pacman -S reflector
fi

# Override reflector config file
sudo cp -r etc/xdg/reflector/reflector.conf /etc/xdg/reflector

# Enable reflector service
sudo systemctl enable reflector.service
