# Dotfiles

Current list:

- [X11](https://gitlab.freedesktop.org/xorg/xserver) - display server
- [alacritty](https://github.com/alacritty/alacritty) - terminal emulator
- [fontconfig](https://gitlab.freedesktop.org/fontconfig/fontconfig) - font configuration
- [git](https://github.com/git/git) - version control system
- [i3](https://github.com/i3/i3) - tiling window manager
- [nvim](https://github.com/neovim/neovim) - terminal text editor
- [polybar](https://github.com/polybar/polybar) - status bar
- [zathura](https://github.com/pwmt/zathura) - document viewer
- [zsh](https://github.com/zsh-users/zsh) - command-line shell

## Installation

Git doesn't allow cloning into a non-empty directory, so you will have to init a new git repository inside $HOME/.config, add the origin and then simply pull it.

```
$ cd $HOME/.config
$ git init
$ git remote add origin git@github.com:vladdoroniuk/dotfiles.git
$ git pull origin main
```
