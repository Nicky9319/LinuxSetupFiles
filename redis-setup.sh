# Redis Setup

sudo apt update
sudo add-apt-repository ppa:redislabs/redis
sudo apt install redis
redis-server --version
sudo systemctl enable redis-server
sudo systemctl start redis-server

# Changing Redis Config File as per Need (Might Change the Port on which Redis is Running)
sudo nano /etc/redis/redis.conf
