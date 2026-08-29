#!/bin/bash
# GIMP Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

[[ $(command -v gimp) ]] && echo -e "${Y}GIMP is already Installed!${W}\n" || {
	echo -e "${G}Installing ${Y}GIMP Image Editor${W}\n"
	apt update
	apt install -y gimp gimp-data gimp-data-extras --no-install-recommends
	echo -e "${C}GIMP Image Editor Installed Successfully\n${W}"
}
