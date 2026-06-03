# Docker Setup (Official Docker Engine + Compose Plugin)
# Source: Renderperk_ProxyUser_MainServer/Docs/setup-vm.md — Method B (recommended)

# Remove old Docker packages if present
sudo apt remove -y docker docker-engine docker.io containerd runc || true

# Install prerequisites
sudo apt update
sudo apt install -y ca-certificates curl gnupg lsb-release

# Add Docker's official GPG key
sudo mkdir -p /etc/apt/keyrings
curl -fsSL https://download.docker.com/linux/$(. /etc/os-release && echo "$ID")/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg

# Set up Docker repository
echo \
  "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/$(. /etc/os-release && echo "$ID") \
  $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null

# Install Docker Engine and Compose plugin
sudo apt update
sudo apt install -y docker-ce docker-ce-cli containerd.io docker-compose-plugin

# Enable and start Docker
sudo systemctl enable --now docker

# Add current user to docker group (log out/in or run: newgrp docker)
sudo usermod -aG docker $USER

# Verify installation
docker --version
docker compose version
docker run --rm hello-world
