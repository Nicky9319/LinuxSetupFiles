#Setting Up Blender to be Able to Use in Terminal itself

# Go to root directory
cd /

# Download Blender 4.2
wget https://download.blender.org/release/Blender4.2/blender-4.2.0-linux-x64.tar.xz

# Extract the downloaded tarball
sudo tar -xf blender-4.2.0-linux-x64.tar.xz

# Rename extracted folder to a simpler name
sudo mv blender-4.2.0-linux-x64 Blender

# Install required dependencies
apt-get update && apt-get install -y \
        libx11-6 \
        libx11-dev \
        libxrender1 \
        libxxf86vm1 \
        libxfixes3 \
        libxi6 \
        libxkbcommon0 \
        libsm6 \
        libgl1

# Remove any existing symlink (to avoid conflicts)
sudo rm -f /usr/bin/blender

# Create a symlink so Blender can be run from anywhere
sudo ln -s /Blender/blender /usr/bin/blender
