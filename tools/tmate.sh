#setup to install tmate for terminal sharing

if dkpg -l | grep tmate; then
	echo "Tmate already installed..."
else
	echo "Installing Tmate..."
	sudo apt install tmate
fi


