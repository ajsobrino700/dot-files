# Dot-Files

This repository is where I save my dotfiles for my different environment.

There is a lot tool for the management of the dotfiles, but my favourite is:
**dotter**, It is a little cli written in _Rust_. You have a file setting
with the information of the files and the files.
With this tool you can deploy the setting by enviroment, with variables,
templates and other interesting feature.

The link of repository is [dotter repository](https://github.com/SuperCuber/dotter)
and the official [documentation](https://github.com/SuperCuber/dotter/wiki).

## Installation

There are several option to install this sofware (download a binary files,
manager package like _scoop_ in windows). In my case I use _Rust_ in some
personal project therefore I prefer clone the code of repository and build the
project. When I have the binary file I move the file to the path.
Following We can several command for build and move the folder. Here I will build
the last version.

```bash
    git clone git@github.com:SuperCuber/dotter.git
    cd ./dotter
    git checkout tags/v0.13.0
    cargo build --release
    sudo mv ./target/release/dotter /usr/local/bin/dotter
```

The best practises are clone this repository in _~/.dotfiles_,
I have my dotfiles in this folder and the setting of the tool is inside of _~/.dotfiles/.dotter_

There is two things very important. The local and cache files must be ignored.
Also We can define several packages in the globals setting and I could even
include a setting file. But the configuration that will deploy is the **local.toml**

## The alias and additional Software

There is some alias or command that depends of other third party sofware.
I list the information relationship with this tool and command.

- [lsd](https://github.com/lsd-rs/lsd).
- [bat](https://github.com/sharkdp/bat).
- [neovim](https://neovim.io/), recently version
  (It is mandatory to support lua setting).
- [nerd font](https://lucacorbucci.medium.com/my-iterm2-setup-ed6cb1752f3b#:~:text=In%20the%20iTerm%20Preferences%20go%20to%20Appareance%20-%3E,powerlevel9k%20brew%20tap%20homebrew%2Fcask-fonts%20brew%20cask%20install%20font-hack-nerd-font),
  this is mandatory to render well the command **lsd**.
- [zsh syntax highlighting](https://github.com/zsh-users/zsh-syntax-highlighting?tab=readme-ov-file),
  It is a plugin of zsh.
- [ansiweather](https://github.com/fcambus/ansiweather).
