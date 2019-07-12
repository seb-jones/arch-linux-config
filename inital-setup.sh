#!/bin/bash
# Should be executed as superuser. Sets up configuration files automatically.

# Arguments:
# $1 - String to append if not in file
# $2 - Path to file
function append_if_not_in_file() 
{
	# Create file if it does not exist
	touch "$2"

	# Append the string to the file only if grep fails to find the string
	grep -q "$1" "$2" || echo -e "\n$1" >> "$2"
}

HOME_DIRECTORY="/home/seb"

# Display usage message if the wrong number of arguments are given
if [ "$#" -ne 0 ]
then
	echo "Usage: $0"
	exit 1
fi

# If the .bashrc does not already have our source command, append it
append_if_not_in_file "source $HOME_DIRECTORY/.config/bashrc" \
	"$HOME_DIRECTORY/.bashrc"

# If the .zshrc does not already have our source command, append it
append_if_not_in_file "source $HOME_DIRECTORY/.config/zshrc" \
	"$HOME_DIRECTORY/.zshrc"

# If the .xinitrc does not have our setxkbmap and exec commands, append them
append_if_not_in_file "setxkbmap gb" "$HOME_DIRECTORY/.xinitrc"
append_if_not_in_file "exec i3" "$HOME_DIRECTORY/.xinitrc"

ln -s /home/seb/.config/inputrc /home/seb/.inputrc

#
# Add package list generation hooks to pacman.conf
#

cp /etc/pacman.conf /tmp/pacman.conf.bak

sed -Ei -e 's%\#HookDir.+%HookDir = /home/seb/.config/pacman-hooks/%g' /etc/pacman.conf

ln -s /home/seb/.config/inputrc /root/.inputrc
