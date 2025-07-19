# jenkins installs command
#!/bin/bash

# Install Java
sudo apt update
sudo apt install -y openjdk-11-jdk

# Add Jenkins repository key
wget -q -O - https://pkg.jenkins.io/debian/jenkins.io.key | sudo apt-key add -

# Add Jenkins repository
echo "deb http://pkg.jenkins.io/debian-stable binary/" | sudo tee /etc/apt/sources.list.d/jenkins.list  

# Update package index
sudo apt update

# Install Jenkins
sudo apt install -y jenkins

# Start Jenkins service
sudo systemctl start jenkins

# Enable Jenkins to start on boot
sudo systemctl enable jenkins

# Check Jenkins status
sudo systemctl status jenkins

# Open Jenkins in browser
echo "Jenkins is running on http://localhost:8080"

# Get initial admin password
sudo cat /var/lib/jenkins/secrets/initialAdminPassword

# Open Jenkins configuration file
sudo nano /etc/default/jenkins
