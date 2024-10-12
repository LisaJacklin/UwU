#get setup with glances too
#

if dkpg -l | grep glances; then
	echo "Glances already installed."
else
	echo "Installing Glances..."
	sudo apt install glances
fi

