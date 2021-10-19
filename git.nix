{ pkgs }:

{
  package = pkgs.gitAndTools.gitFull;
  enable = true;
  userName = "Austin Boyd";
  userEmail = "austin@puppet.com";
  ignores = [
    ".cache/"
    ".DS_Store"
    "*.swp"
    ".vscode/"
    "shell.nix"
  ];
  aliases = {
    ba = "branch -a";
    bd = "branch -D";
    br = "branch";
    acm = "commit -am"; # add, commit, message
    co = "checkout";
    cob = "checkout -b";
    ci = "commit";
    cm = "commit -m";
    cp = "commit -p";
    d = "diff";
    dco = "commit -S --amend";
    s = "status";
    pr = "pull --rebase";
    st = "status";
    l = "log --graph --pretty='%Cred%h%Creset - %C(bold blue)<%an>%Creset %s%C(yellow)%d%Creset %Cgreen(%cr)' --abbrev-commit --date=relative";
    whoops = "reset --hard";
    wipe = "commit -s";
    fix = "rebase --exec 'git commit --amend --no-edit -S' -i origin/develop";
  };
  extraConfig = {
    core = {
      editor = "vim";
      whitespace = "trailing-space,space-before-tab";
    };
    
    # Look into these later
    # commit.gpgsign = "true";
    # gpg.program = "gpg2";

    credential.helper = "osxkeychain";
    pull.rebase = "false";
    init.defaultBranch = "main";
  };
}
