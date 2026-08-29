#!/bin/bash
# Extra Features Installation Menu

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"
B="$(printf '\033[1;34m')"

if [ -n "$SUDO_USER" ] && [ "$SUDO_USER" != "root" ]; then
	username="$SUDO_USER"
else
	username=$(ls /home | grep -Ev 'ubuntu|lost\+found' | head -n 1)
	username=${username:-ubuntu}
fi

banner() {
    clear
    printf "\033[33m    _  _ ___  _  _ _  _ ___ _  _    _  _ ____ ___  \033[0m\n"
    printf "\033[36m    |  | |__] |  | |\ |  |  |  |    |\/| |  | |  \ \033[0m\n"
    printf "\033[32m    |__| |__] |__| | \|  |  |__|    |  | |__| |__/ \033[0m\n"
    printf "\033[0m\n"
    printf "     \033[32mExtra Features Installer for Ubuntu 26.04\033[0m\n"
    printf "                 \033[33mVersion : \033[32m3.0\033[0m\n\n"
}

run_script() {
	script_name="$1"
	if [[ -f "/home/$username/softwares/$script_name" ]]; then
		bash "/home/$username/softwares/$script_name"
	elif [[ -f "$(pwd)/$script_name" ]]; then
		bash "$(pwd)/$script_name"
	else
		bash <(curl -fsSL "https://raw.githubusercontent.com/modded-ubuntu/modded-ubuntu/master/distro/$script_name")
	fi
}

show_menu() {
	banner
	cat <<- EOF
		${B}═══════════════════════════════════════════════════${W}
		${Y}           EXTRA FEATURES INSTALLATION MENU${W}
		${B}═══════════════════════════════════════════════════${W}

		${C} [${W}1${C}]  📦 LibreOffice Suite (Word, Excel, PowerPoint)${W}
		${C} [${W}2${C}]  🎨 GIMP Image Editor${W}
		${C} [${W}3${C}]  📧 Thunderbird Email Client${W}
		${C} [${W}4${C}]  📁 Additional File Managers${W}
		${C} [${W}5${C}]  🔧 Development Tools (Python, Node, Java, Go, Rust)${W}
		${C} [${W}6${C}]  🐳 Docker CLI & Docker Compose${W}
		${C} [${W}7${C}]  📊 System Monitoring Tools (htop, btop, neofetch)${W}
		${C} [${W}8${C}]  🔤 Extra Fonts Collection${W}
		${C} [${W}9${C}]  🚀 Install All Extras${W}
		${C} [${W}0${C}]  ❌ Exit${W}

		${B}═══════════════════════════════════════════════════${W}
	EOF
	read -n1 -p "${R} [${G}~${R}]${Y} Select an Option: ${G}" choice
	echo -e "\n"
}

install_all() {
	banner
	echo -e "${Y}Installing all extra features...${W}\n"
	run_script "libreoffice.sh"
	run_script "gimp.sh"
	run_script "thunderbird.sh"
	run_script "file-managers.sh"
	run_script "development-tools.sh"
	run_script "docker.sh"
	run_script "htop.sh"
	run_script "fonts-extra.sh"
	echo -e "\n${G}All extra features installed successfully!${W}"
	read -p "Press Enter to continue..."
}

while true; do
	show_menu
	
	case $choice in
		1)
			banner
			run_script "libreoffice.sh"
			read -p "Press Enter to continue..."
			;;
		2)
			banner
			run_script "gimp.sh"
			read -p "Press Enter to continue..."
			;;
		3)
			banner
			run_script "thunderbird.sh"
			read -p "Press Enter to continue..."
			;;
		4)
			banner
			run_script "file-managers.sh"
			read -p "Press Enter to continue..."
			;;
		5)
			banner
			run_script "development-tools.sh"
			read -p "Press Enter to continue..."
			;;
		6)
			banner
			run_script "docker.sh"
			read -p "Press Enter to continue..."
			;;
		7)
			banner
			run_script "htop.sh"
			read -p "Press Enter to continue..."
			;;
		8)
			banner
			run_script "fonts-extra.sh"
			read -p "Press Enter to continue..."
			;;
		9)
			install_all
			;;
		0)
			banner
			echo -e "${G}Exiting extras installer. Enjoy your Ubuntu 26.04!${W}\n"
			exit 0
			;;
		*)
			banner
			echo -e "${R}Invalid option. Please try again.${W}"
			sleep 2
			;;
	esac
done
