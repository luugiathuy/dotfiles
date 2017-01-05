# dotfiles

## Install

- Clone the repo to home directory 

    ```
    git clone git@github.com:luugiathuy/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ```

- Clone and update submodules 

    ```
    git submodule update --init --recursive
    ```

- Follow instruction in https://github.com/luugiathuy/prezto to install `zprezto`

- In `~/.dotfiles` folder, run

    ```
    rake
    ```
    
    to create symlinks in home directory

- Go to `~/.dotfiles/fonts` and run `./install.sh` to install Powerline fonts

- Go to `~/.dotfiles/vimconfig` and follow https://github.com/luugiathuy/vim-config to set up vim

## Others

### Homebrew

```
ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
```

### Tmux

- Install tmux

```
brew install tmux
brew install reattach-to-user-namespace
```
    
- Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

### RVM

```
curl -L get.rvm.io | bash -s stable
source ~/.rvm/scripts/rvm
rvm requirements
```
    
### Link Sublime (Mac OSX)

```
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/subl
```
    
### Ctags

```
brew install ctags-exuberant
```
    
