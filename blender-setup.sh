#Setting Up Blender to be Able to Use in Terminal itself

cd /
wget https://download.blender.org/release/Blender4.2/blender-4.2.0-linux-x64.tar.xz
sudo tar -xf blender-4.2.0-linux-x64.tar.xz

mv blender4.2.0-linux-x64.tar.xz Blender
apt-get update && \
apt-get install -y \
        libx11-6 \
        libx11-dev \
        libxrender1 \
        libxxf86vm1 \
        libxfixes3 \
        libxi6 \
        libxkbcommon0 \
        libsm6 \
        libgl1

ln -s /Blender/blender /usr/bin/blender