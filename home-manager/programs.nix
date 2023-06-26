{ config, pkgs, libs, ... }: {
  imports = [
    ./programs/git.nix
    ./programs/fish.nix
    ./programs/emacs.nix
    ./programs/librewolf.nix
    /run/user/1000/secrets/mail.nix
    /run/user/1000/secrets/task.nix
  ];
}
