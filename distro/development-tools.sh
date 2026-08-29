#!/bin/bash
# Development Tools Installation Script

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

echo -e "${G}Installing ${Y}Development Tools${W}\n"

# Essential development tools
dev_tools=(
	build-essential
	gcc
	g++
	make
	cmake
	gdb
	git
	python3
	python3-pip
	python3-venv
	nodejs
	npm
	default-jdk
	golang-go
	rustc
	cargo
)

apt update

for tool in "${dev_tools[@]}"; do
	if ! dpkg -l | grep -q "^ii.*$tool"; then
		echo -e "${G}Installing ${Y}$tool${W}"
		apt install -y "$tool" --no-install-recommends
	else
		echo -e "${Y}$tool is already installed${W}"
	fi
done

# Install additional Python packages
echo -e "\n${G}Installing common Python packages${W}"
pip3 install --upgrade pip setuptools wheel

echo -e "\n${C}Development Tools Installed Successfully\n${W}"
echo -e "${Y}Installed:${W}"
echo -e "  ${C}• C/C++ (gcc, g++, make, cmake)${W}"
echo -e "  ${C}• Python 3 with pip${W}"
echo -e "  ${C}• Node.js with npm${W}"
echo -e "  ${C}• Java JDK${W}"
echo -e "  ${C}• Go (Golang)${W}"
echo -e "  ${C}• Rust with Cargo${W}"
