# (ubuntu - 20.04)

sudo apt update && sudo upgrade -y
sudo apt install ubuntu-desktop -y
sudo apt install xrdp -y
sudo systemctl enable xrdp && sudo systemctl start xrdp
sudo ufw allow 3389/tcp

Now use the RDP in the windows to log into it with the User and password 