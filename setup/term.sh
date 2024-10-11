#need to check and see what I have before I can go through and begin installing things that can be used to customize my terminal experience!
#

#first installing some color
echo "#####################################"
echo "     Setting Up Terminal for Use     "
echo "#####################################"

echo "first I need to get some color here...."

if dpkg -l | grep lolcat > /dev/null; then
	echo "Looks like you already have color! Great :)" | lolcat
else
	echo " Lolcat is coloring..."
	sudo apt install lolcat
fi

echo "Now, let's get setup!" | lolcat
echo "---------------------------------------"

#install bash
if dpkg -l | grep bash > /dev/null; then
	echo "bash already installed" | lolcat
else
	echo "Installing bash..."
	sudo apt install bash
fi

#install glow
if dpkg -l | grep glow > /dev/null; then
	echo "glow already installed" | lolcat
else
	echo "Installing glow..." | lolcat
	sudo apt install glow
	sudo snap install glow #if apt doesn't work...
fi

#need to install neovim/vim for editing

#installing tmux
if dpkg -l | grep tmux > /dev/null; then
	echo "tmux is already installed" | lolcat
else
	echo "Installing tmux..." | lolcat
	sudo apt install tmux 
	sudo apt install tmuxinator
fi
#might as well add tmuxinator too...
#adding git
if dpkg -l | grep git > /dev/null; then
	echo "git is already installed" | lolcat
else
	echo "Installing git..." | lolcat
	sudo apt install git
fi

#adding telnet
if dpkg -l | grep telnet > /dev/null; then
	echo "telnet is already installed" | lolcat
else
	echo "Installing telnet" | lolcat
	sudo apt install telnet
fi

#installing nmap
if dpkg -l | grep nmap > /dev/null; then
	echo "nmap is already installed" | lolcat
else
	echo "Installing nmap..." | lolcat
	sudo apt install nmap
fi


echo "######################################" 
echo "    Basic Terminal Setup Complete     " | lolcat
echo "######################################" 




