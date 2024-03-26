#!/bin/bash

sudo apt update
sudo apt install qemu-utils qemu-system-x86 qemu-system-gui
wget https://cdn.mikrotik.com/routeros/7.5/mikrotik-7.5.iso
qemu-img create -f qcow2 Image.img 2G
qemu-system-x86_64 -cdrom mikrotik-7.5.iso -boot menu=on -drive file=Image.img -m 512 -accel tcg
