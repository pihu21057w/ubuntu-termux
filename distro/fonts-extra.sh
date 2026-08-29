#!/bin/bash
# Additional Fonts Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

echo -e "${G}Installing ${Y}Additional Fonts${W}\n"

font_packages=(
	fonts-noto
	fonts-noto-color-emoji
	fonts-liberation
	fonts-liberation2
	fonts-dejavu
	fonts-roboto
	fonts-ubuntu
	fonts-firacode
	fonts-cascadia-code
	fonts-jetbrains-mono
)

apt update

for font in "${font_packages[@]}"; do
	if ! dpkg -l | grep -q "^ii.*$font"; then
		echo -e "${G}Installing ${Y}$font${W}"
		apt install -y "$font" --no-install-recommends
	else
		echo -e "${Y}$font is already installed${W}"
	fi
done

echo -e "\n${G}Rebuilding font cache...${W}"
fc-cache -fv

echo -e "\n${C}Additional Fonts Installed Successfully\n${W}"
