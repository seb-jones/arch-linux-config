# Arch Linux Config

## Usage

Clone this repo to `~/.config`

### Synchronizing Arch Packages

To install the packages in `.config/package-list.txt`, run the following command with root permission:
```
pacman -S --needed - < ~/.config/package-list.txt
```

### Setting Up Configuration Files

Execute `inital-setup.sh` as the root user. This will append lines to various config files and set up symlinks so that root also makes use of said configs.

This script will create backup files in the form of FILENAME.bak, in the /tmp directory.

### Generating Example Files for Machine-Specific Files

Files that differ per machine are not tracked. Instead a copy of them is made, each with the prefix `.example`. Symlink the `pre-commit.sh` git hook to do this automatically every time you commit:

```
ln -s ~/.config/pre-commit.sh ~/.config/.git/hooks/pre-commit
```
