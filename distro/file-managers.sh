#!/bin/bash
# Additional File Managers Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

cat <<- EOF
	${Y} ---${G} Select File Manager ${Y}---

	${C} [${W}1${C}] Thunar (Default - Already included with XFCE)
	${C} [${W}2${C}] Nemo (Cinnamon File Manager)
	${C} [${W}3${C}] PCManFM (Lightweight)
	${C} [${W}4${C}] Nautilus (GNOME Files)
	${C} [${W}5${C}] Install All
	${C} [${W}6${C}] Skip!

EOF
read -n1 -p "${R} [${G}~${R}]${Y} Select an Option: ${G}" FM_OPTION
echo -e "\n"

apt update

case $FM_OPTION in
	1)
		echo -e "${Y}Thunar is already included with XFCE${W}"
		;;
	2)
		echo -e "${G}Installing ${Y}Nemo${W}"
		apt install -y nemo --no-install-recommends
		;;
	3)
		echo -e "${G}Installing ${Y}PCManFM${W}"
		apt install -y pcmanfm --no-install-recommends
		;;
	4)
		echo -e "${G}Installing ${Y}Nautilus${W}"
		apt install -y nautilus --no-install-recommends
		;;
	5)
		echo -e "${G}Installing ${Y}All File Managers${W}"
		apt install -y nemo pcmanfm nautilus --no-install-recommends
		;;
	*)
		echo -e "${Y}Skipping File Manager Installation${W}"
		;;
esac

echo -e "\n${C}File Manager Setup Complete\n${W}"
