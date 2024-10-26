# time to get some fun things in here....

echo "Time to get..." | lolcat
echo "   CUSTOM     " | lolcat

echo "Downloading something fun..."
sudo apt install cmatrix
sudo apt install libaa-bin
sudo apt install cowsay
sudo apt install oneko
sudo apt install espeak

echo "Let's see if you've got cargo installed..."
if dpkg -l | grep cargo > /dev/null; then
	exit 0
else
	echo "Installing cargo..." | lolcat
	sudo apt install cargo
fi

echo "Now say hi to Jerry by running oneko!"


 

