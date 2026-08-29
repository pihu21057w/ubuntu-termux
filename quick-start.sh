#!/bin/bash
# Quick Start Guide and Helper Script

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
    printf "     \033[32mQuick Start Guide - Ubuntu 26.04 for Termux\033[0m\n"
    printf "                 \033[33mVersion : \033[32m3.0\033[0m\n\n"
}

show_welcome() {
    banner
    cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}    WELCOME TO UBUNTU 26.04 MODDED FOR TERMUX!${W}
		${B}═══════════════════════════════════════════════════${W}

		${G}This script will help you get started quickly!${W}

		${C}What would you like to do?${W}

		${Y}[1]${W} View Quick Start Guide
		${Y}[2]${W} Install Extra Features (LibreOffice, GIMP, etc.)
		${Y}[3]${W} System Utilities Menu
		${Y}[4]${W} VNC Help & Setup
		${Y}[5]${W} Development Setup Guide
		${Y}[6]${W} View System Information
		${Y}[0]${W} Exit

		${B}═══════════════════════════════════════════════════${W}
	EOF
    read -n1 -p "${R} [${G}~${R}]${Y} Select an Option: ${G}" choice
    echo -e "\n"
}

quick_guide() {
    banner
    cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}              QUICK START GUIDE${W}
		${B}═══════════════════════════════════════════════════${W}

		${G}🎯 Getting Started:${W}

		${C}1. Starting Ubuntu:${W}
		   ${Y}ubuntu${W}

		${C}2. Starting VNC (GUI):${W}
		   ${Y}vncstart${W}
		   Then connect with VNC Viewer to: ${G}localhost:1${W}

		${C}3. Stopping VNC:${W}
		   ${Y}vncstop${W}

		${G}📦 Installing Additional Software:${W}

		   ${Y}sudo bash extras.sh${W}
		   (Install LibreOffice, GIMP, Development Tools, etc.)

		${G}🛠️ System Management:${W}

		   ${Y}sudo bash utilities.sh${W}
		   (Update, clean, backup, change VNC resolution)

		${G}📱 VNC Viewer Setup:${W}

		   ${C}• Address:${W} localhost:1
		   ${C}• Quality:${W} Set to 'High' for best experience
		   ${C}• Resolution:${W} 1080x1080 recommended for mobile
		   ${C}• Keyboard:${W} Use Hacker's Keyboard if default doesn't appear

		${G}💡 Useful Commands:${W}

		   ${Y}htop${W}           - System monitor (if installed)
		   ${Y}neofetch${W}       - System information (if installed)
		   ${Y}ncdu /${W}         - Disk usage analyzer (if installed)
		   ${Y}apt update${W}     - Update package list
		   ${Y}apt upgrade${W}    - Upgrade packages

		${G}📝 Important Notes:${W}

		   ${C}• Storage:${W} Keep at least 1GB free for system updates
		   ${C}• Updates:${W} Run apt update && apt upgrade weekly
		   ${C}• Backups:${W} Use utilities.sh to backup your settings
		   ${C}• Performance:${W} Close unused apps to save memory

		${B}═══════════════════════════════════════════════════${W}
	EOF
}

vnc_setup() {
    banner
    cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}           VNC SETUP & TROUBLESHOOTING${W}
		${B}═══════════════════════════════════════════════════${W}

		${G}📺 VNC Connection Setup:${W}

		${C}Step 1:${W} Start VNC Server
		   ${Y}vncstart${W}

		${C}Step 2:${W} Install VNC Viewer on your device
		   ${Y}https://www.realvnc.com/download/viewer/${W}

		${C}Step 3:${W} Connect to VNC
		   Address: ${G}localhost:1${W}
		   Name: ${C}Ubuntu 26.04${W} (or anything you like)

		${G}🎨 Recommended VNC Settings:${W}

		   ${C}• Picture Quality:${W} High
		   ${C}• Color Level:${W} Full
		   ${C}• ViewOnly:${W} Off

		${G}📐 Recommended Resolutions:${W}

		   ${Y}For Mobile Phones:${W}
		   • 1080x1080 (Square, best for portrait)
		   • 1080x700 (Compact)
		   • 800x600 (Low-end devices)

		   ${Y}For Tablets:${W}
		   • 1920x1080 (Full HD)
		   • 1600x900
		   • 1366x768

		${G}❓ Common Issues:${W}

		   ${R}Problem:${W} Keyboard doesn't appear
		   ${G}Solution:${W} Install Hacker's Keyboard from:
		             ${Y}https://github.com/klausw/hackerskeyboard/releases${W}

		   ${R}Problem:${W} Display is laggy
		   ${G}Solution:${W} • Lower VNC resolution
		             • Close unused applications
		             • Restart VNC server

		   ${R}Problem:${W} Storage not visible
		   ${G}Solution:${W} Run in Termux: ${Y}termux-setup-storage${W}

		   ${R}Problem:${W} Can't connect to VNC
		   ${G}Solution:${W} • Check VNC is running: ${Y}ps aux | grep vnc${W}
		             • Restart VNC: ${Y}vncstop && vncstart${W}

		${G}🔧 Change VNC Resolution:${W}

		   ${Y}sudo bash utilities.sh${W}
		   Then select "Change VNC Resolution"

		${B}═══════════════════════════════════════════════════${W}
	EOF
}

dev_setup() {
    banner
    cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}          DEVELOPMENT SETUP GUIDE${W}
		${B}═══════════════════════════════════════════════════${W}

		${G}💻 Installing Development Tools:${W}

		${C}Quick Install (All tools):${W}
		   ${Y}sudo bash extras.sh${W}
		   Select: ${C}Development Tools${W}

		${C}This installs:${W}
		   • Python 3 with pip
		   • Node.js with npm
		   • Java JDK
		   • Go (Golang)
		   • Rust with Cargo
		   • C/C++ (gcc, g++, make, cmake)
		   • Git

		${G}🐍 Python Development:${W}

		   ${C}Create virtual environment:${W}
		   ${Y}python3 -m venv myenv${W}
		   ${Y}source myenv/bin/activate${W}

		   ${C}Install packages:${W}
		   ${Y}pip install numpy pandas matplotlib${W}

		${G}📦 Node.js Development:${W}

		   ${C}Install packages globally:${W}
		   ${Y}npm install -g typescript nodemon${W}

		   ${C}Create new project:${W}
		   ${Y}npm init -y${W}

		${G}☕ Java Development:${W}

		   ${C}Compile Java:${W}
		   ${Y}javac MyProgram.java${W}
		   ${Y}java MyProgram${W}

		${G}🦀 Rust Development:${W}

		   ${C}Create new project:${W}
		   ${Y}cargo new myproject${W}
		   ${Y}cd myproject${W}
		   ${Y}cargo build${W}
		   ${Y}cargo run${W}

		${G}🔧 C/C++ Development:${W}

		   ${C}Compile with gcc:${W}
		   ${Y}gcc program.c -o program${W}
		   ${Y}./program${W}

		   ${C}Compile with g++:${W}
		   ${Y}g++ program.cpp -o program${W}

		${G}📝 Recommended IDEs:${W}

		   • ${C}VS Code${W} - Full-featured IDE
		     Install: Select in extras.sh
		   
		   • ${C}Sublime Text${W} - Fast text editor
		     Install: Select in extras.sh
		   
		   • ${C}nano/vim${W} - Terminal editors (pre-installed)

		${G}🐳 Docker Development:${W}

		   ${Y}Note:${W} Docker daemon cannot run in proot
		   ${C}But you can:${W}
		   • Use Docker CLI to connect to remote Docker
		   • Build images for deployment
		   • Manage remote containers

		   ${C}Install Docker CLI:${W}
		   ${Y}sudo bash extras.sh${W} → Select Docker

		${G}🔍 Version Control (Git):${W}

		   ${C}Configure Git:${W}
		   ${Y}git config --global user.name "Your Name"${W}
		   ${Y}git config --global user.email "your@email.com"${W}

		   ${C}Basic commands:${W}
		   ${Y}git init${W}
		   ${Y}git add .${W}
		   ${Y}git commit -m "Initial commit"${W}

		${B}═══════════════════════════════════════════════════${W}
	EOF
}

system_info() {
    banner
    echo -e "${B}═══════════════════════════════════════════════════${W}"
    echo -e "${Y}              SYSTEM INFORMATION${W}"
    echo -e "${B}═══════════════════════════════════════════════════${W}\n"
    
    if command -v neofetch &> /dev/null; then
        neofetch
    else
        echo -e "${C}OS:${W} Ubuntu 26.04 LTS (Noble Numbat)"
        echo -e "${C}Architecture:${W} $(uname -m)"
        echo -e "${C}Kernel:${W} $(uname -r)"
        [ -f /etc/hostname ] && echo -e "${C}Hostname:${W} $(cat /etc/hostname)"
        echo -e "\n${Y}Tip: Install neofetch for detailed info: ${G}apt install neofetch${W}"
    fi
    
    echo -e "\n${C}Disk Usage:${W}"
    df -h / 2>/dev/null | tail -n 1 | awk '{print "  Total: "$2"  Used: "$3" ("$5")"}'
    
    echo -e "\n${C}Memory Info:${W}"
    if command -v free &> /dev/null; then
        free -h | grep Mem | awk '{print "  Total: "$2"  Used: "$3"  Free: "$4}'
    fi
}

# Main loop
while true; do
    show_welcome
    
    case $choice in
        1)
            quick_guide
            read -p "Press Enter to continue..."
            ;;
        2)
            banner
            if [ -f "$(dirname "$0")/distro/extras.sh" ]; then
                sudo bash "$(dirname "$0")/distro/extras.sh"
            elif [ -f "$HOME/softwares/extras.sh" ]; then
                sudo bash "$HOME/softwares/extras.sh"
            else
                echo -e "${Y}Downloading extras.sh...${W}"
                sudo bash <(curl -fsSL "https://raw.githubusercontent.com/modded-ubuntu/modded-ubuntu/master/distro/extras.sh")
            fi
            ;;
        3)
            banner
            if [ -f "$(dirname "$0")/distro/utilities.sh" ]; then
                sudo bash "$(dirname "$0")/distro/utilities.sh"
            elif [ -f "$HOME/softwares/utilities.sh" ]; then
                sudo bash "$HOME/softwares/utilities.sh"
            else
                echo -e "${Y}Downloading utilities.sh...${W}"
                sudo bash <(curl -fsSL "https://raw.githubusercontent.com/modded-ubuntu/modded-ubuntu/master/distro/utilities.sh")
            fi
            ;;
        4)
            vnc_setup
            read -p "Press Enter to continue..."
            ;;
        5)
            dev_setup
            read -p "Press Enter to continue..."
            ;;
        6)
            system_info
            read -p "Press Enter to continue..."
            ;;
        0)
            banner
            echo -e "${G}Thank you for using Ubuntu 26.04 Modded!${W}"
            echo -e "${C}Run this script anytime: ${Y}bash quick-start.sh${W}\n"
            exit 0
            ;;
        *)
            banner
            echo -e "${R}Invalid option. Please try again.${W}"
            sleep 2
            ;;
    esac
done
