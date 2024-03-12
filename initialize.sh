#!/bin/bash

# Update package repositories
sudo apt-get update

# Install necessary packages for Ansible
sudo apt-get install -y ansible git

# Display Ansible version
ansible --version

# Clone the Ansible project from GitHub
git clone https://github.com/tuchtenh/NetworkSecurity ansible_project

# Navigate to the Ansible project directory
cd ansible_project

# Install additional Ansible roles if needed
# ansible-galaxy install -r requirements.yml

# Display project structure
ls -R
