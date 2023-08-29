# dotfiles

## Installation

- Clone the repo to home directory

    ```console
    git clone git@github.com:luugiathuy/dotfiles.git ~/.dotfiles
    cd ~/.dotfiles
    ```

- Follow instruction in https://github.com/sorin-ionescu/prezto to install `zprezto` (no need to create link to ZSH configuration files)

- Install `stow` https://www.gnu.org/software/stow

    macOS
    ```console
    brew install stow
    ```

    Arch Linux
    ```console
    pacman -S stow
    ```

- In `~/.dotfiles` folder, run

    ```console
    make all
    ```

    to create symlinks in home directory

- Install Powerline font https://github.com/powerline/fonts

- Install tmux

    macOS
    ```console
    brew install tmux
    brew install reattach-to-user-namespace
    ```

    Arch Linux
    ```console
    pacman -S tmux
    ```

- Install [Tmux Plugin Manager](https://github.com/tmux-plugins/tpm)

    ```console
    git clone https://github.com/tmux-plugins/tpm ~/.config/tmux/plugins/tpm
    ```
    Install plugins in tmux with `<prefix> + I`

- Install zsh-autosuggestions https://github.com/zsh-users/zsh-autosuggestions

    ```console
    git clone https://github.com/zsh-users/zsh-autosuggestions ~/.zsh/zsh-autosuggestions
    ```

- Install `neofetch`

    macOS
    ```console
    brew install neofetch
    ```

    Arch Linux
    ```console
    pacman -S neofetch
    ```

- Install `neovim` https://github.com/neovim/neovim/wiki/Installing-Neovim

    macOS

    ```console
    brew install neovim
    ```

    Arch Linux
    ```console
    pacman -S neovim
    ```

- Install `ctags` https://github.com/universal-ctags/ctags

    macOS
    ```console
    brew install ctags-exuberant
    ```

    Arch Linux
    ```console
    pacman -S ctags
    ```

## Arch Linux

## macOS

- Install Homebrew https://brew.sh

    ```console
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
    ```

## Languages

### Ruby

- Install `rbenv` https://github.com/rbenv/rbenv

    macOS
    ```console
    brew install rbenv ruby-build
    ```

    Arch Linux
    ```console
    yay -S rbenv
    ```
    
    After install:
    ```console
    rbenv init
    ```

### Rust

Install `rustfmt` for RustFmt command of [rust.vim](https://github.com/rust-lang/rust.vim)


```console
cargo install rustfmt
```

