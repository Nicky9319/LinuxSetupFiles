# Setting Up Sqlite3 Version >= 3.35.0

sudo apt update
sudo apt upgrade -y

sudo apt install -y build-essential wget

wget https://www.sqlite.org/2021/sqlite-autoconf-3350500.tar.gz
tar -xvzf sqlite-autoconf-3350500.tar.gz
cd sqlite-autoconf-3350500

./configure
make
sudo make install

sqlite3 --version
