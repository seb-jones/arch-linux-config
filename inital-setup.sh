#!/bin/bash
# Should be executed by root. Sets up configuration files and symlinks root's
# configs to the user's, so that they can share.

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
# Apply configs to root
#

append_if_not_in_file "source $HOME_DIRECTORY/.config/bashrc" \
	"/root/.bashrc"

append_if_not_in_file "source $HOME_DIRECTORY/.config/zshrc" \
	"/root/.zshrc"

# Link to .xinitrc
if [ -e /root/.xinitrc ]; then rm /root/.xinitrc; fi

ln -s "$HOME_DIRECTORY/.xinitrc" "/root/.xinitrc"


# Link to i3 config
mkdir -p /root/.config/i3

if [ -e /root/.config/i3/config ]; then rm /root/.config/i3/config; fi

ln -s "$HOME_DIRECTORY/.config/i3/config" "/root/.config/i3/config"

# Link to i3 status config
mkdir -p /root/.config/i3status

if [ -e /root/.config/i3status/config ]; then rm /root/.config/i3status/config; fi

ln -s "$HOME_DIRECTORY/.config/i3status/config" "/root/.config/i3status/config"

# Add package list generation hooks to pacman.conf

cp /etc/pacman.conf /tmp/pacman.conf.bak

sed -Ei -e 's%\#HookDir.+%HookDir = /home/seb/.config/pacman-hooks/%g' /etc/pacman.conf

ln -s /home/seb/.config/inputrc /root/.inputrc
