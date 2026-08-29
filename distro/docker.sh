#!/bin/bash
# Docker Installation Script (Docker-in-Proot workaround)

R="$(printf '\033[1;31m')"
G="$(printf '\033[1;32m')"
Y="$(printf '\033[1;33m')"
W="$(printf '\033[1;37m')"
C="$(printf '\033[1;36m')"

echo -e "${Y}Note: Docker cannot run natively in proot environment${W}"
echo -e "${Y}Installing Docker CLI and docker-compose for remote Docker management${W}\n"

apt update

# Install Docker CLI (not daemon)
echo -e "${G}Installing ${Y}Docker CLI${W}"
apt install -y ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key
mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/ubuntu/gpg | gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up the repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
  $(lsb_release -cs) stable" | tee /etc/apt/sources.list.d/docker.list > /dev/null

apt update
apt install -y docker-ce-cli docker-compose-plugin docker-buildx-plugin

echo -e "\n${C}Docker CLI and Docker Compose Installed Successfully\n${W}"
echo -e "${Y}Note: To use Docker, you need to connect to a remote Docker daemon${W}"
echo -e "${Y}Set DOCKER_HOST environment variable to connect to remote Docker${W}"
