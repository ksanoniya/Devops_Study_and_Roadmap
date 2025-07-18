#update linux
sudo apt-get update -y

#upgrade linux
sudo apt-get upgrade -y

#install docker compose
sudo apt-get install docker-compose -y

#check docker compose version
docker-compose --version

#install docker compose plugin
sudo apt-get install docker-compose-plugin -y

#check docker compose plugin version
docker compose version


# compose run command
docker compose up -d

# check if docker compose is running
docker compose ps

# delete docker compose
docker compose down

