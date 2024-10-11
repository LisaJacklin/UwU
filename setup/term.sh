#need to check and see what I have before I can go through and begin installing things that can be used to customize my terminal experience!
#

#first installing some color
echo "need to get some color in here first!"
if dpkg -l | grep lolcat > /dev/null; then
	echo "Looks like you already have color! Great :)" | lolcat
else
	echo " Lolcat is coloring..."
	sudo apt install lolcat
fi

echo "Beginning Terminal Setup...." | lolcat

if dpkg -l | grep tmux > /dev/null; then
	echo "tmux is already installed" | lolcat
else
	echo "Installing tmux..." | lolcat
	sudo apt install tmux 
	sudo apt install tmuxinator
fi
#might as well add tmuxinator too...

if dpkg -l | grep git > /dev/null; then
	echo "git is already installed" | lolcat
else
	echo "Installing git..." | lolcat
	sudo apt install git
fi




