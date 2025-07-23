#Step 1: Prerequisites
#OS: Ubuntu / macOS / Windows
#Installed:
#   Docker (as a driver)
#   kubectl
#   curl

Step 2: Install Minikube
Ubuntu/Linux

bash
Copy code
curl -LO https://storage.googleapis.com/minikube/releases/latest/minikube-linux-amd64
sudo install minikube-linux-amd64 /usr/local/bin/minikube

 macOS

bash
Copy code
brew install minikube
🔹 Windows (chocolatey)

powershell
Copy code
choco install minikube

Step 3: Start Minikube

bash
Copy code
minikube start --driver=docker
✅ Check status:

bash
Copy code
minikube status
🔗 Access Kubernetes dashboard (optional but cool):

bash
Copy code
minikube dashboard
Step 4: Verify Cluster

bash
Copy code
kubectl get nodes
kubectl get pods -A
