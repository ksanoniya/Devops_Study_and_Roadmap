# docker install commands
sudo apt-get update
sudo apt-get install -y docker.io
sudo systemctl start docker
sudo systemctl enable docker
sudo usermod -aG docker $USER

# docker configuration commands
sudo systemctl restart docker
sudo systemctl status docker
docker --version
docker info 

# docker pull and run commands
docker pull hello-world
docker run hello-world

# docker build and run commands
docker build -t hello-world .
docker run hello-world

# docker run with options
docker run -d -p 80:80 --name webserver nginx

# check running containers
docker ps

# stop and remove containers
docker stop webserver
docker rm webserver

# remove docker image
docker rmi nginx    
