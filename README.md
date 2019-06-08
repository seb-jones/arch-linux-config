# Arch Linux Config

## Usage

Clone this repo to `~/.config`

### Synchronizing Arch Packages

To install the packages in `.config/package-list.txt`, run the follwing command as root or using `sudo`:
```
pacman -S --needed - < ~/.config/package-list.txt
```

### Setting Up Configuration Files

#### Package List Generation

Add the following to the `[options]` section of `/etc/pacman.conf`:
```
HookDir = /home/seb/.config/pacman-hooks/
```
Note that the path must be absolute. In addition, you will need to change some absolute paths in the following files:
* `~/.config/generate-package-list.sh`
* `~/.config/pacman-hooks/generate-package-list.hook`

#### i3 Window Manager
Append this to `~/.xinitrc`:
```
setxkbmap gb
exec i3
```

#### Bash
Append this to `~/.bashrc`:
```
source ~/.config/bashrc
```

#### Dmenu
Add exclusions to `usr/bin/dmenu_run` using `grep`:
```
#!/bin/sh
dmenu_path | grep -vf ~/.config/dmenu_exclude | dmenu "$@" | ${SHELL:-"/bin/sh"} &
```
