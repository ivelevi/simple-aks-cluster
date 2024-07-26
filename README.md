# SIMPLE AKS CLUSTER

This repository contains Terraform code to deploy a simple Azure Kubernetes Service (AKS) cluster, including cert-manager and NGINX Ingress Controller.

## Prerequisites

Before you begin, ensure you have the following tools installed:

### Install Terraform

1. Download the latest version of Terraform from the [official website](https://www.terraform.io/downloads.html).
2. Unzip the downloaded package and move the `terraform` executable to a directory included in your system's `PATH`.

For example, on macOS:

```bash
brew tap hashicorp/tap
brew install hashicorp/tap/terraform
```

On Windows, use the Windows installer or Chocolatey:

```bash
choco install terraform
```

On Linux:

```bash
sudo apt-get update && sudo apt-get install -y gnupg software-properties-common
wget -O- https://apt.releases.hashicorp.com/gpg | gpg --dearmor | sudo tee /usr/share/keyrings/hashicorp-archive-keyring.gpg
echo "deb [signed-by=/usr/share/keyrings/hashicorp-archive-keyring.gpg] https://apt.releases.hashicorp.com $(lsb_release -cs) main" | sudo tee /etc/apt/sources.list.d/hashicorp.list
sudo apt-get update && sudo apt-get install terraform
```

### Install Azure CLI

Follow the instructions on the official Azure CLI installation page.

For example, on macOS:

```bash
brew update && brew install azure-cli
On Windows, use the Windows installer:
```

On Windos:

```powershell
Invoke-WebRequest -Uri https://aka.ms/installazurecliwindows -OutFile .\AzureCLI.msi; Start-Process msiexec.exe -Wait -ArgumentList '/I AzureCLI.msi /quiet'
```

On Linux:

```bash
curl -sL https://aka.ms/InstallAzureCLIDeb | sudo bash
```

### Deploying the AKS Cluster

Clone this repository and navigate to the root directory.

```bash
git clone https://github.com/yourusername/simple-aks-cluster.git
cd simple-aks-cluster
```

"Replace the empity values in the project with your own variables, such as resource group name, cluster name, region, and other required parameters."

Initialize Terraform.
```bash
terraform init
```

Apply the Terraform configuration to create the AKS cluster.
```bash
terraform apply
```

### Deploying cert-manager

Navigate to the certmanager folder.
```bash
cd cert-manager
```

Initialize and apply the Terraform configuration.
```bash
terraform init
terraform apply
```

### Deploying NGINX Ingress Controller

Navigate to the nginx-ingress folder.
```bash
cd ../nginx-ingress
```

Initialize and apply the Terraform configuration.
```bash
terraform init
terraform apply
```

### Get your kubeconfig file

Run this command with your variables to get your kubeconfig file and have access to your cluster
```bash
az aks get-credentials --resource-group your-resourcegroup --name yourcluster-name
```
