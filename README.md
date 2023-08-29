# dotfiles

## Installation

- Clone the repo to home directory

    ```shell
    git clone git@github.com:luugiathuy/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ```

- Clone and update submodules

    ```shell
    git submodule update --init --recursive
    ```

- Follow instruction in https://github.com/sorin-ionescu/prezto to install `zprezto`

- Install `stow` https://www.gnu.org/software/stow
    
    ```shell
    # macOS
    brew install stow

    # Arch Linux
    pacman -S stow
    ```

- In `~/.dotfiles` folder, run

    ```shell
    make all
    ```

    to create symlinks in home directory

- Install Powerline font https://github.com/powerline/fonts

- Install tmux

    ```shell
    # macOS
    brew install tmux
    brew install reattach-to-user-namespace

    # Arch Linux
    pacman -S tmux
    ```

- Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

    ```shell
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm

    # Install plugins in tmux with <prefix> + I
    ```

- Install `neofetch` 

    ```shell
    # macOS
    brew install neofetch

    # Arch Linux
    pacman -S neofetch
    ```

- Install `neovim` https://github.com/neovim/neovim/wiki/Installing-Neovim

    ```shell
    # macOS
    brew install neovim

    # Arch Linux
    pacman -S neovim
    ```

## Arch Linux

- Install `pywal` https://github.com/dylanaraps/pywal

    ```shell
    pip3 install pywal
    ```

## macOS

- Install Homebrew https://brew.sh

    ```shell
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

## Languages

### Ruby

- Install `rbenv` https://github.com/rbenv/rbenv

    ```shell
    # macOS
    brew install rbenv ruby-build

    # Arch Linux
    yay -S rbenv 
    ```
    
    ```shell
    rbenv init
    ```

### Rust

Install `rustfmt` for RustFmt command of [rust.vim](https://github.com/rust-lang/rust.vim)


```shell
cargo install rustfmt
```

### Ctags

```
brew install ctags-exuberant
```
