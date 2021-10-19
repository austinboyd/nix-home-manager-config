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
    lorri
    niv
  ];

  homePackages = with pkgs; [
    youtube-dl
    vagrant
    jq
    bat
    dhall
    antigen
    thefuck
    gnutar

  ];
in homePackages ++ gitTools ++ nixTools
