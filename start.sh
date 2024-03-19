#!/bin/bash

sudo apt-get update

sudo apt-get install -y ansible sshpass

ansible --version

# Generate ssh key
exec ssh-agent bash

ssh-keygen


# Copy ssh key to remote mashine
ssh-copy-id user@destip
