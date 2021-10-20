{ pkgs }:

let
  gitTools = with pkgs.gitAndTools; [
    delta
    diff-so-fancy
    git-codeowners
    gitflow
    gh
  ];

  nixTools = with pkgs; [
    cachix
    lorri
    niv
  ];

  homePackages = with pkgs; [
    xcode-install
    youtube-dl
    vagrant
    jq
    bat
    dhall
    antigen
    thefuck
    gnutar
    zsh
    oh-my-zsh
    iterm2
    goku
    starship
  ];

in homePackages ++ gitTools ++ nixTools
