# Arch Linux Config

## Usage

Clone this repo to `~/.config`

### Synchronizing Arch Packages

To install the packages in `.config/package-list.txt`, run the follwing command as root or using `sudo`:
```
pacman -S --needed - < ~/.config/package-list.txt
```

### Setting Up Configuration Files

Execute `inital-setup.sh` as the root user. This will append lines to various config files and set up symlinks so that root also makes use of said configs.

#### Package List Generation

Add the following to the `[options]` section of `/etc/pacman.conf`:
```
HookDir = /home/seb/.config/pacman-hooks/
```
Note that the path must be absolute. In addition, you will need to change some absolute paths in the following files:
* `~/.config/generate-package-list.sh`
* `~/.config/pacman-hooks/generate-package-list.hook`
