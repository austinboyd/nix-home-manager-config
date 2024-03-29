{ fetchFromGitHub }:

{
  enable = true;
  shellAliases = {
    # ones from the original author
    grep = "grep --color=auto";
    diff = "diff --color=auto";
    dc = "docker compose";
    szsh = "source ~/.zshrc";
    cat = "bat";
    switch = "home-manager switch && source ~/.zshrc";
    garbage = "nix-collect-garbage";
    reload = "switch && garbage";
    # austin's custom one aliases
    pupgit="cd ~/git/puppet";
  };
  enableAutosuggestions = true;
  enableCompletion = true;
  autocd = true;
  initExtra = (builtins.readFile ./init.sh);
  plugins = [
    {
      name = "zsh-autosuggestions";
      src = fetchFromGitHub {
        owner = "zsh-users";
        repo = "zsh-autosuggestions";
        rev = "v0.6.4";
        sha256 = "0h52p2waggzfshvy1wvhj4hf06fmzd44bv6j18k3l9rcx6aixzn6";
      };
    }
    {
      name = "zsh-syntax-highlighting";
      src = fetchFromGitHub {
        owner = "zsh-users";
        repo = "zsh-syntax-highlighting";
        rev = "v0.7.1";
        sha256 = "03r6hpb5fy4yaakqm3lbf4xcvd408r44jgpv4lnzl9asp4sb9qc0";
      };
    }
    {
      name = "wting";
      src = fetchFromGitHub {
        owner = "wting";
        repo = "autojump";
        rev = "release-v22.5.3";
        sha256 = "1rgpsh70manr2dydna9da4x7p8ahii7dgdgwir5fka340n1wrcws";
      };
    }
  ];
}