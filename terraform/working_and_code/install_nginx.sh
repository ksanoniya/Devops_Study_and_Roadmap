# install_nginx.sh
# nginx installations commands for terraform user_date
sudo apt-get update 
sudo apt install nginx -y
sudo systemctl start nginx 
sudo systemctl enable nginx

<h1> hello devops <h1> > /var/www/html/index.html