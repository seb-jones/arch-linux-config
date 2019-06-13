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

This script will create backup files in the form of FILENAME.bak, in the /tmp directory.

Execute `generate-local-configs.sh` to substitute variables from a `local-settings` file to config files that benefit from per-machine settings. See `local-settings.example`.
