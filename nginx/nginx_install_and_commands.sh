# install nginx
sudo apt-get update
sudo apt-get install -y nginx
sudo systemctl start nginx
sudo systemctl enable nginx
sudo usermod -aG www-data $USER

# nginx configuration commands
sudo systemctl restart nginx
sudo systemctl status nginx
nginx -v

# nginx test page
curl http://localhost

# nginx configuration file
sudo nano /etc/nginx/nginx.conf

# nginx test configuration
sudo nginx -t

# nginx reload configuration
sudo systemctl reload nginx

# check running nginx processes
ps aux | grep nginx

# stop and remove nginx
sudo systemctl stop nginx
sudo systemctl disable nginx
sudo apt-get remove -y nginx

# remove nginx configuration files
sudo rm -rf /etc/nginx
sudo rm -rf /var/www/html/*
sudo rm -rf /var/log/nginx/*
sudo rm -rf /var/lib/nginx/*
sudo rm -rf /var/cache/nginx/*
sudo rm -rf /var/run/nginx.pid
sudo rm -rf /var/run/nginx.sock

# nginx default port
// localhost:80
// localhost:8080 (if configured)
// localhost:443 (if SSL configured)