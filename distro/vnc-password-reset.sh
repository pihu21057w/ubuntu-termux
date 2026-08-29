#!/bin/bash
# VNC Password Reset Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"
B="$(printf '\033[1;34m')"

banner() {
    clear
    printf "\033[33m    _  _ ___  _  _ _  _ ___ _  _    _  _ ____ ___  \033[0m\n"
    printf "\033[36m    |  | |__] |  | |\ |  |  |  |    |\/| |  | |  \ \033[0m\n"
    printf "\033[32m    |__| |__] |__| | \|  |  |__|    |  | |__| |__/ \033[0m\n"
    printf "\033[0m\n"
    printf "     \033[32mVNC Password Reset - Ubuntu 26.04\033[0m\n"
    printf "                 \033[33mVersion : \033[32m3.0\033[0m\n\n"
}

banner

echo -e "${B}═══════════════════════════════════════════════════${W}"
echo -e "${Y}            VNC PASSWORD RESET${W}"
echo -e "${B}═══════════════════════════════════════════════════${W}\n"

echo -e "${C}This script will help you reset your VNC password.${W}\n"

# Check if VNC is installed
if ! command -v vncpasswd &> /dev/null; then
    echo -e "${R}Error: VNC is not installed or vncpasswd command not found.${W}"
    echo -e "${Y}Please run: ${G}sudo bash gui.sh${W} to install VNC.\n"
    exit 1
fi

# Check if .vnc directory exists
if [ ! -d "$HOME/.vnc" ]; then
    echo -e "${Y}Creating VNC directory...${W}"
    mkdir -p "$HOME/.vnc"
fi

echo -e "${Y}Current user: ${G}$(whoami)${W}\n"
echo -e "${C}Please enter your new VNC password:${W}"
echo -e "${Y}(Password must be between 6-8 characters)${W}\n"

# Run vncpasswd
vncpasswd

if [ $? -eq 0 ]; then
    echo -e "\n${G}═══════════════════════════════════════════════════${W}"
    echo -e "${G}     VNC PASSWORD SUCCESSFULLY RESET!${W}"
    echo -e "${G}═══════════════════════════════════════════════════${W}\n"
    
    echo -e "${Y}Important Information:${W}\n"
    echo -e "${C}• Your new VNC password has been saved${W}"
    echo -e "${C}• Password file location: ${Y}$HOME/.vnc/passwd${W}"
    echo -e "${C}• Use this password when connecting via VNC Viewer${W}\n"
    
    # Check if VNC is running
    if pgrep -f "Xvnc.*$USER" > /dev/null; then
        echo -e "${Y}Note: VNC server is currently running${W}"
        echo -e "${C}You may need to restart VNC for changes to take effect:${W}"
        echo -e "  ${G}vncstop${W}"
        echo -e "  ${G}vncstart${W}\n"
    else
        echo -e "${C}Start VNC server with: ${G}vncstart${W}\n"
    fi
    
    echo -e "${Y}VNC Connection Details:${W}"
    echo -e "${C}• Address: ${G}localhost:1${W}"
    echo -e "${C}• Password: ${G}[The password you just set]${W}\n"
    
else
    echo -e "\n${R}═══════════════════════════════════════════════════${W}"
    echo -e "${R}     FAILED TO SET VNC PASSWORD${W}"
    echo -e "${R}═══════════════════════════════════════════════════${W}\n"
    
    echo -e "${Y}Troubleshooting:${W}"
    echo -e "${C}1. Make sure VNC is properly installed${W}"
    echo -e "${C}2. Check if you have write permissions to $HOME/.vnc${W}"
    echo -e "${C}3. Try running: ${G}sudo bash gui.sh${W} to reinstall VNC${W}\n"
    
    exit 1
fi

echo -e "${B}═══════════════════════════════════════════════════${W}\n"
