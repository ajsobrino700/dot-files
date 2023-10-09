# Dot-Files

This repository is where I save my dotfiles for my different environment.

There is a lot tool for the management of the dotfiles, but my favourite is: **dotter**, It is a little cli written in *Rust*. You have a file setting with the information of the files and the files.
With this tool you can deploy the setting by enviroment, with variables, templates and other interesting feature.

The link of repository is [dotter repository](https://github.com/SuperCuber/dotter) and the official [documentation](https://github.com/SuperCuber/dotter/wiki).

## Installation

There are several option to install this sofware (download a binary files, manager package like *scoop* in windows). In my case I use *Rust* in some personal project therefore I prefer clone the code of repository and build the project. When I have the binary file I move the file to the path.
Following We can several command for build and move the folder. Here I will build the last version.
```bash
    git clone git@github.com:SuperCuber/dotter.git
    cd ./dotter
    git checkout tags/v0.13.0
    cargo build --release
    sudo mv ./target/release/dotter /usr/local/bin/dotter
```

The best practises are clone this repository in *~/.dotfiles*, I have my dotfiles in this folder and the setting of the tool is inside of *~/.dotfiles/.dotter*
