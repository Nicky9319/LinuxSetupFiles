# Rabbit MQ Setup
# We are Running Rabbit MQ Using Docker it Makes it easy and it makes Sense because Message Queue Is Something that Doesnt have any value by local Installation

sudo apt update
sudo apt install docker.io -y
sudo docker run -d --rm --name rabbit-server -p 5672:5672 -p 15672:15672 rabbitmq:3-management

# It Also Gives a Management View for Web Browser on Port 15672