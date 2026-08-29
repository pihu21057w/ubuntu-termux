#!/bin/bash
# Ubuntu Management Utilities

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
    printf "     \033[32mUbuntu 26.04 Management Utilities\033[0m\n"
    printf "                 \033[33mVersion : \033[32m3.0\033[0m\n\n"
}

show_system_info() {
	banner
	echo -e "${B}═══════════════════════════════════════════════════${W}"
	echo -e "${Y}              SYSTEM INFORMATION${W}"
	echo -e "${B}═══════════════════════════════════════════════════${W}\n"
	
	if command -v neofetch &> /dev/null; then
		neofetch
	else
		echo -e "${C}OS:${W} $(lsb_release -d | cut -f2)"
		echo -e "${C}Kernel:${W} $(uname -r)"
		echo -e "${C}Architecture:${W} $(uname -m)"
		echo -e "${C}Hostname:${W} $(hostname)"
		echo -e "${C}Uptime:${W} $(uptime -p)"
		echo -e "\n${Y}Install neofetch for detailed system info: ${G}apt install neofetch${W}"
	fi
	
	echo -e "\n${C}Disk Usage:${W}"
	df -h / | tail -n 1 | awk '{print "  Used: "$3" / "$2" ("$5" used)"}'
	
	echo -e "\n${C}Memory Usage:${W}"
	free -h | grep Mem | awk '{print "  Used: "$3" / "$2}'
}

clean_system() {
	banner
	echo -e "${Y}Cleaning system...${W}\n"
	
	echo -e "${C}Removing unused packages...${W}"
	apt autoremove -y
	
	echo -e "${C}Cleaning package cache...${W}"
	apt autoclean -y
	apt clean
	
	echo -e "${C}Removing old log files...${W}"
	find /var/log -type f -name "*.log" -mtime +7 -delete 2>/dev/null || true
	
	echo -e "\n${G}System cleanup completed!${W}"
	show_disk_usage
}

show_disk_usage() {
	echo -e "\n${C}Disk space after cleanup:${W}"
	df -h / | tail -n 1 | awk '{print "  Used: "$3" / "$2" ("$5" used)"}'
}

update_system() {
	banner
	echo -e "${Y}Updating Ubuntu 26.04 system...${W}\n"
	
	apt update
	apt upgrade -y
	apt full-upgrade -y
	apt autoremove -y
	
	echo -e "\n${G}System updated successfully!${W}"
}

backup_settings() {
	banner
	echo -e "${Y}Creating backup of user settings...${W}\n"
	
	if [ -n "$SUDO_USER" ] && [ "$SUDO_USER" != "root" ]; then
		username="$SUDO_USER"
	else
		username=$(ls /home | grep -Ev 'ubuntu|lost\+found' | head -n 1)
		username=${username:-ubuntu}
	fi
	
	backup_dir="/home/$username/ubuntu-backup-$(date +%Y%m%d-%H%M%S)"
	mkdir -p "$backup_dir"
	
	# Backup XFCE settings
	if [ -d "/home/$username/.config/xfce4" ]; then
		cp -r "/home/$username/.config/xfce4" "$backup_dir/"
		echo -e "${C}✓ XFCE settings backed up${W}"
	fi
	
	# Backup VNC settings
	if [ -d "/home/$username/.vnc" ]; then
		cp -r "/home/$username/.vnc" "$backup_dir/"
		echo -e "${C}✓ VNC settings backed up${W}"
	fi
	
	# Backup bash config
	[ -f "/home/$username/.bashrc" ] && cp "/home/$username/.bashrc" "$backup_dir/"
	[ -f "/home/$username/.bash_profile" ] && cp "/home/$username/.bash_profile" "$backup_dir/"
	
	echo -e "\n${G}Backup created at: ${C}$backup_dir${W}"
}

change_vnc_resolution() {
	banner
	echo -e "${B}═══════════════════════════════════════════════════${W}"
	echo -e "${Y}         VNC RESOLUTION CONFIGURATION${W}"
	echo -e "${B}═══════════════════════════════════════════════════${W}\n"
	
	cat <<- EOF
		${C}Select VNC Resolution:${W}
		
		${Y}[1]${W} 1920x1080 (Full HD)
		${Y}[2]${W} 1600x900
		${Y}[3]${W} 1366x768 (Laptop)
		${Y}[4]${W} 1280x720 (HD)
		${Y}[5]${W} 1080x1080 (Square - Recommended)
		${Y}[6]${W} 1080x700 (Compact)
		${Y}[7]${W} 800x600 (Low res)
		${Y}[8]${W} Custom
		
	EOF
	
	read -p "${R}[${G}~${R}]${Y} Select option: ${G}" res_choice
	
	case $res_choice in
		1) resolution="1920x1080" ;;
		2) resolution="1600x900" ;;
		3) resolution="1366x768" ;;
		4) resolution="1280x720" ;;
		5) resolution="1080x1080" ;;
		6) resolution="1080x700" ;;
		7) resolution="800x600" ;;
		8) 
			read -p "${Y}Enter custom resolution (e.g., 1024x768): ${G}" resolution
			;;
		*) 
			echo -e "${R}Invalid option${W}"
			return
			;;
	esac
	
	echo -e "\n${Y}Setting VNC resolution to: ${C}$resolution${W}"
	
	# Update vncstart script if it exists
	if [ -f "/usr/local/bin/vncstart" ]; then
		sed -i "s/-geometry [0-9]*x[0-9]*/-geometry $resolution/g" /usr/local/bin/vncstart
		echo -e "${G}VNC resolution updated! Restart VNC for changes to take effect.${W}"
	else
		echo -e "${R}VNC start script not found. Please reinstall VNC.${W}"
	fi
}

show_menu() {
	banner
	cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}           UBUNTU MANAGEMENT UTILITIES${W}
		${B}═══════════════════════════════════════════════════${W}

		${C} [${W}1${C}]  📊 Show System Information${W}
		${C} [${W}2${C}]  🔄 Update System${W}
		${C} [${W}3${C}]  🧹 Clean System (Free up space)${W}
		${C} [${W}4${C}]  💾 Backup User Settings${W}
		${C} [${W}5${C}]  🖥️  Change VNC Resolution${W}
		${C} [${W}6${C}]  📦 Install Extra Features${W}
		${C} [${W}7${C}]  ℹ️  VNC Quick Help${W}
		${C} [${W}0${C}]  ❌ Exit${W}

		${B}═══════════════════════════════════════════════════${W}
	EOF
	read -n1 -p "${R} [${G}~${R}]${Y} Select an Option: ${G}" choice
	echo -e "\n"
}

vnc_help() {
	banner
	cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}               VNC QUICK HELP${W}
		${B}═══════════════════════════════════════════════════${W}

		${C}Starting VNC:${W}
		  ${G}vncstart${W}
		  
		${C}Stopping VNC:${W}
		  ${G}vncstop${W}
		  
		${C}VNC Address:${W}
		  ${Y}localhost:1${W}
		  
		${C}Recommended VNC Viewer:${W}
		  Download from: ${Y}https://www.realvnc.com/download/viewer/${W}
		  
		${C}Recommended Resolutions:${W}
		  ${Y}• 1080x1080 - Best for mobile${W}
		  ${Y}• 1080x700 - Compact mode${W}
		  ${Y}• 1920x1080 - Full HD (tablets)${W}
		  
		${C}Troubleshooting:${W}
		  ${Y}• If keyboard doesn't appear, use Hacker's Keyboard${W}
		  ${Y}• Set picture quality to 'High' in VNC Viewer${W}
		  ${Y}• For better performance, close unused apps${W}

		${B}═══════════════════════════════════════════════════${W}
	EOF
}

# Main loop
while true; do
	show_menu
	
	case $choice in
		1)
			show_system_info
			read -p "Press Enter to continue..."
			;;
		2)
			update_system
			read -p "Press Enter to continue..."
			;;
		3)
			clean_system
			read -p "Press Enter to continue..."
			;;
		4)
			backup_settings
			read -p "Press Enter to continue..."
			;;
		5)
			change_vnc_resolution
			read -p "Press Enter to continue..."
			;;
		6)
			if [ -f "$(dirname "$0")/extras.sh" ]; then
				bash "$(dirname "$0")/extras.sh"
			else
				bash <(curl -fsSL "https://raw.githubusercontent.com/modded-ubuntu/modded-ubuntu/master/distro/extras.sh")
			fi
			;;
		7)
			vnc_help
			read -p "Press Enter to continue..."
			;;
		0)
			banner
			echo -e "${G}Goodbye! Enjoy your Ubuntu 26.04!${W}\n"
			exit 0
			;;
		*)
			banner
			echo -e "${R}Invalid option. Please try again.${W}"
			sleep 2
			;;
	esac
done
