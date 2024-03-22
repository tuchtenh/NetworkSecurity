#!/bin/bash

sudo apt update
sudo apt install -y qemu-system-x86 qemu-utils

mkdir -p /opt/mikrotik
cd /opt/mikrotik
wget https://download.mikrotik.com/routeros/7.5/routeros-7.5.npk
unzip chr-7.1beta6.img.zip

qemu-img create -f qcow2 hda.img 1G

qemu-system-x86_64 -hda hda.img -cdrom routeros-7.5.npk -boot d -m 512 -net nic -net user -rtc base=localtime -no-reboot

qemu-system-x86_64 -hda hda.img -m 512 -net nic -net user -rtc base=localtime


rm routeros-7.5.npk
