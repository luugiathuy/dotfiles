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
