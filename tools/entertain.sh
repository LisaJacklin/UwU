# time to add in some things that are creature comforts....
#

echo " ##################################" | lolcat
echo "  Creature Comforts Incoming!!!    " | lolcat
echo " ##################################" | lolcat

#first spotify (thank you music gods for giving this to me on their site
if dpkg -l | grep spotify > /dev/null; then
	echo "Looks like you've already got Spotify"
else

	curl -sS https://download.spotify.com/debian/pubkey_6224F9941A8AA6D1.gpg | sudo gpg -dearmor --yes -o /etc/apt/trusted.gpg.d/spotify.pgp

	echo "deb http://repository.spotify.com stable non-free" | sudo tee /etc/apt/sources.list.d/spotify.list

	sudo apt-get update && sudo apt-get install spotify-client
	echo "Installing spotify..." | lolcat
fi



