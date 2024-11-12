#!/bin/bash

if dpkg -l obs > /dev/null; then
	echo "OBS is already installed!"
else
	echo "Beginning OBS installation..."
	sudo add-apt-repository ppa:obsproject/obs-studio
	sudo apt install obs-studio
fi

