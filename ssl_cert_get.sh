sudo apt update
sudo apt install certbot
sudo apt install python3-certbot-nginx  # If you plan to use NGINX

# If you're not using NGINX and want to use Certbot’s standalone mode (Certbot will temporarily spin up a web server to verify your domain):
sudo certbot certonly --standalone -d your-domain.com

# If you have NGINX already and want Certbot to configure the SSL for you:
sudo certbot --nginx -d your-domain.com

