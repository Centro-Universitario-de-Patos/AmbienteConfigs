#!/bin/bash

set -e

echo "🔄 Atualizando o sistema..."
sudo apt update && sudo apt upgrade -y

echo "📦 Instalando dependências básicas..."
sudo apt install -y curl wget gnupg lsb-release apt-transport-https ca-certificates software-properties-common

echo "🔐 Instalando o servidor SSH (OpenSSH)..."
sudo apt install -y openssh-server
sudo systemctl enable --now ssh

echo "🛠️ Instalando snapd..."
sudo apt install -y snapd
sudo systemctl enable --now snapd.socket
sudo ln -sf /var/lib/snapd/snap /snap

echo "🔧 Instalando Git..."
sudo apt install -y git

echo "🌐 Instalando Google Chrome..."
wget -q https://dl.google.com/linux/direct/google-chrome-stable_current_amd64.deb
sudo apt install -y ./google-chrome-stable_current_amd64.deb
rm google-chrome-stable_current_amd64.deb

echo "🌐 Instalando Chromium (Open Source do Google Chrome)..."
sudo snap install chromium

echo "💬 Instalando Discord..."
sudo snap install discord

echo "📝 Instalando Visual Studio Code..."
wget -qO- https://packages.microsoft.com/keys/microsoft.asc | gpg --dearmor > microsoft.gpg
sudo install -o root -g root -m 644 microsoft.gpg /etc/apt/trusted.gpg.d/
sudo sh -c 'echo "deb [arch=amd64] https://packages.microsoft.com/repos/vscode stable main" > /etc/apt/sources.list.d/vscode.list'
rm microsoft.gpg
sudo apt update
sudo apt install -y code

echo "🐳 Instalando Docker..."
curl -fsSL https://get.docker.com -o get-docker.sh
sh get-docker.sh
sudo usermod -aG docker $USER
rm get-docker.sh

echo "📦 Instalando Docker Compose (plugin oficial)..."
DOCKER_CONFIG=${DOCKER_CONFIG:-$HOME/.docker}
mkdir -p $DOCKER_CONFIG/cli-plugins
curl -SL https://github.com/docker/compose/releases/latest/download/docker-compose-linux-x86_64 -o $DOCKER_CONFIG/cli-plugins/docker-compose
chmod +x $DOCKER_CONFIG/cli-plugins/docker-compose

echo "🚀 Instalando Postman via Snap..."
sudo snap install postman

echo "🔍 Instalando Insomnia via Snap..."
sudo snap install insomnia

echo "✅ Tudo instalado com sucesso!"
