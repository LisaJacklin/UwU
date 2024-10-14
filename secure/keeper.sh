#!/bin/bash
#installing keeper commander 

keeperInstall() {

	echo "Installing Keeper"
	pip3 install keepercommander
	pip3 install --upgrade keepercommander
	echo "Keeper Commander Installed. "
	echo " Use keeper shell to begin" | lolcat
}

if dpkg -l | grep python3 > /dev/null; then
	echo "Python 3 already installed"
	keeperInstall
else
	echo "Installing python3 to obtain keeper"
	sudo apt install python3
	sudo apt install python3-pip
	keeperInstall
fi



exit 0

