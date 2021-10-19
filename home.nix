{ config, ... }:

let
  nigpkgsRev = "21.11-pre";
  pkgs = import (fetchTarball "https://github.com/nixos/nixpkgs/archive/${nigpkgsRev}.tar.gz") {};

  externalPackages = import ./packages.nix { inherit pkgs; };
  customScripts = import ./scripts.nix { writeScriptBin = pkgs.writeScriptBin; };

  allPackages = externalPackages ++ customScripts;
in {
  nixpkgs.config = {
    allowUnfree = true;
    allowUnsupportedSystem = true;
  };

  programs = {
    direnv = {
      enable = true;
      
      nix-direnv = {
        enable = true;
      };
    };
    
    home-manager = {
      enable = true;
      path = "…";
    };

    exa = {
      enable = true;
      enableAliases = true;
    };

    neovim = import ./neovim.nix { vimPlugins = pkgs.vimPlugins; };

    starship = import ./starship.nix;

  # commented out for now 10/19/21
  #  gpg = {
  #    enable = true;
  #  };

    git = import ./git.nix { inherit pkgs; };

    zsh = import ./zsh.nix { fetchFromGitHub = pkgs.fetchFromGitHub; };
  };

  home = {
    username = "austin.boyd";
    homeDirectory = "/Users/austin.boyd";
    packages = allPackages;
    sessionVariables = {
      EDITOR = "nvim";
    };
  };

  home.stateVersion = "21.05";
}
