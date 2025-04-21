sudo apt update
sudo apt install software-properties-common -y # This is Needed When the add-apt-repository is Not Added to the Instance By Default
sudo add-apt-repository ppa:deadsnakes/ppa
sudo apt update
sudo apt install python3.12 python3.12-venv -y

sudo apt install python3-pip
