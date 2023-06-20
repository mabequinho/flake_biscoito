{ config, pkgs, ... }: {

  imports = [
    ./programs/git.nix
    ./programs/nvim.nix
    ./programs/task.nix
    ./programs/ff.nix
  ];
}
