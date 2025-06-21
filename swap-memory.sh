# Creating Swap Memory (When Memory fills up this Swap Memory is used as additional memory)
# Note: This is not additional ram rather than Space Allocated on Disk which is used as temporary memory for the same

sudo fallocate -l 2G /swapfile
sudo chmod 600 /swapfile
sudo mkswap /swapfile
sudo swapon /swapfile