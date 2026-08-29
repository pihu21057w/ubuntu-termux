#!/bin/bash
# System Monitoring Tools Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

echo -e "${G}Installing ${Y}System Monitoring Tools${W}\n"

monitoring_tools=(
	htop
	btop
	neofetch
	screenfetch
	net-tools
	iotop
	iftop
	ncdu
)

apt update

for tool in "${monitoring_tools[@]}"; do
	if ! dpkg -l | grep -q "^ii.*$tool"; then
		echo -e "${G}Installing ${Y}$tool${W}"
		apt install -y "$tool" --no-install-recommends
	else
		echo -e "${Y}$tool is already installed${W}"
	fi
done

echo -e "\n${C}System Monitoring Tools Installed Successfully\n${W}"
echo -e "${Y}Installed tools:${W}"
echo -e "  ${C}• htop - Interactive process viewer${W}"
echo -e "  ${C}• btop - Resource monitor${W}"
echo -e "  ${C}• neofetch - System information tool${W}"
echo -e "  ${C}• ncdu - Disk usage analyzer${W}"
