#!/bin/bash
# LibreOffice Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

[[ $(command -v libreoffice) ]] && echo -e "${Y}LibreOffice is already Installed!${W}\n" || {
	echo -e "${G}Installing ${Y}LibreOffice Suite${W}\n"
	apt update
	apt install -y libreoffice libreoffice-gtk3 libreoffice-style-breeze --no-install-recommends
	echo -e "${C}LibreOffice Suite Installed Successfully\n${W}"
}
