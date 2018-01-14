#!/usr/bin/env bash

# fitter, happier, more productive
apt update && apt -y upgrade && apt -y dist-upgrade

# the nvidia drivers don't like power management on my X99 chipset plus gimme nerd
sed 's/quiet/acpi=off/' -i /etc/default/grub
update-grub

# blacklist the open source nvidia driver cos it's like that and that's the way it is
echo -e "blacklist nouveau\noptions nouveau modeset=0\nalias nouveau off" > /etc/modprobe.d/blacklist-nouveau.conf
update-initramfs -u

reboot
