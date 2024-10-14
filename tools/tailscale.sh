#let's get tailscaled
#

echo " Checking for tailscale..." | lolcat

if dpkg -l | grep tailscale > /dev/null; then
	echo "Looks like tailscale is already setup"
else
	echo "Installing tailscale..."
	curl -fsSL https://tailscale.com/install.sh | sh

	#as a backup, 
	sudo apt-get update
	sudo apt-get install tailscale

	#make sure tailscale is up and ready to setup
	echo "Tailscale Downloaded."
	echo "Don't forget to authenticate your tailscale!"
fi

