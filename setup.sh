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

echo " Now for some fun packages!"

fun=(cmatrix libaa-bin cowsay oneko espeak sl cargo)

for f in "${fun[@]}"; do
  if dpkg -l "$f" 2>/dev/null | grep -q "^ii"; then
  	echo "$f is already installed." | lolcat
  else
	echo "$f is not installed. Installing..."
	sudo apt-get install -y "$f" | lolcat
  fi
done

echo "##################################"
echo "  Now you fancy, Enjoy :3" | lolcat
echo "##################################"

