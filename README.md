# nix-home-manager-config

# Nix configuration

This repo houses the [Home Manager](https://github.com/rycee/home-manager) configuration that I use for my macOS laptop. Here are some tools that I install and configure this way:

* [Neovim](https://neovim.io/)
* [Git](https://git-scm.com/)
* [antigen](https://antigen.sharats.me/)
* [zsh(including aliases and environment variables)](https://www.zsh.org/)
* [oh my zsh](https://ohmyz.sh/)
* [curl](https://curl.se)
* [jq](https://stedolan.github.io/jq/)
* [bat](https://github.com/sharkdp/bat)
* [exa](https://the.exa.website/)
* [ripgrep](https://github.com/BurntSushi/ripgrep)
* [tree](http://mama.indstate.edu/users/ice/tree/)
* [xsv](https://github.com/BurntSushi/xsv)

This list will surely grow over time as new packages are installed.

## Debts

This is a fork from [lucperkins/nix-home-manager-config](https://github.com/lucperkins/nix-home-manager-config)
This config is heavily indebted to [srid/nix-config](https://github.com/srid/nix-config).

## Usage

To use these configs yourself as a starter:

1. Install [Nix](https://nixos.org/download.html)
1. Install [Home Manager](https://github.com/rycee/home-manager)
1. `cd ~/.config`
1. `rm -rf nixpkgs`
1. `git clone https://github.com/austinboyd/nix-home-config nixpkgs`
1. `home-manager switch && source ~/.zshrc`
