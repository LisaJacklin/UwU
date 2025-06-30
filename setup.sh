#!/bin/bash

###################################
# Author: Lisa Jacklin
# Last Updated: 2025-06-27
# Purpose: provide quick, easy install for a brand new system
###################################

#list of packages to install
packages=(lolcat bash tmux tmuxinator telnet tree nmap curl git vim htop wget ruby-full asciinema)


echo "##################################"
echo " Let's get setup! "
echo "##################################"

for pkg in "${packages[@]}"; do
  if dpkg -l "$pkg" 2>/dev/null | grep -q "^ii"; then
  	echo "$pkg is already installed."
  else
	echo "$pkg is not installed. Installing..."
	sudo apt-get install -y "$pkg"
  fi
done

echo "##################################"
echo "  Basic Terminal Setup Complete"
echo "##################################"
