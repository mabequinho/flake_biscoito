{ config, pkgs, ... }: {

  imports = [
    ./programs/git.nix
    ./programs/task.nix
    ./programs/fish.nix
    ./programs/emacs.nix
    ./programs/librewolf.nix
  ];
}
