#!/bin/bash
# Thunderbird Email Client Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

[[ $(command -v thunderbird) ]] && echo -e "${Y}Thunderbird is already Installed!${W}\n" || {
	echo -e "${G}Installing ${Y}Thunderbird Email Client${W}\n"
	apt update
	apt install -y thunderbird --no-install-recommends
	echo -e "${C}Thunderbird Email Client Installed Successfully\n${W}"
}
