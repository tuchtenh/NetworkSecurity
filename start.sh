#!/bin/bash

# Update package repositories
sudo apt-get update

# Install necessary packages for Ansible
sudo apt-get install -y ansible sshpass

# Display Ansible version
ansible --version

# Generate ssh key
ssh-keygen

# Copy ssh key to remote mashine
ssh-copy-id user@destip
