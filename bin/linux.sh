#!/bin/bash
#checks if uname is not equal to linux, if not prints error message to linuxsetup
if [uname != Linux];
then 
	echo "Error: OS is not linux" > linuxsetup.log
fi
#creates directory .TRASH
mkdir ~/.TRASH
#checks to see if .vimrc exists, then changes name and then prints message saying name was changed. 
if [-f ".vimrc"];
then
	mv .vimrc .bup_vimrc
	echo ".vimrc was changed to .bup_vimrc"
fi
#redirects contents of vimrc to .vimrc
cat vimrc > .vimrc
#prints text to end of .bashrc
echo "~/.dotfiles/etc/bashrc_custom" >> .bashrc
