# Arch Linux Config

## Usage

Clone this repo to ~/.config

Set `~/.bashrc`:
```
source ~/.config/bashrc
```

Add exclusions to `usr/bin/dmenu_run` using `grep`:
```
#!/bin/sh
dmenu_path | grep -vf ~/.config/dmenu_exclude | dmenu "$@" | ${SHELL:-"/bin/sh"} &
```
