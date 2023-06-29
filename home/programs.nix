{ config, pkgs, libs, ... }: {
  imports = [
    ./programs/git.nix
    ./programs/fish.nix
    ./emacs/emacs.nix
    ./programs/librewolf.nix
    ./services/keyring.nix
    /run/user/1000/secrets/mail.nix
    /run/user/1000/secrets/task.nix
  ];
}
