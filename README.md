# dotfiles

## Install

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

- In `~/.dotfiles` folder, run

    ```shell
    make all
    ```

    to create symlinks in home directory

- Install Powerline font https://github.com/powerline/fonts

## Others

### Homebrew

```shell
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

### Rust

Install `rustfmt` for RustFmt command of [rust.vim](https://github.com/rust-lang/rust.vim)

```
cargo install rustfmt
```
