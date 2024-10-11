#need to check and see what I have before I can go through and begin installing things that can be used to customize my terminal experience!
#

echo "Beginning Terminal Setup...."

if dpkg -l | grep tmux; then
	echo "tmux is already installed"
else
	echo "Installing tmux..."
	sudo apt install tmux
	sudo apt install tmuxinator
fi
#might as well add tmuxinator too...

if dpkg -l | grep git; then
	echo "git is already installed"
else
	echo "Installing git..."
	sudo apt install git
fi




