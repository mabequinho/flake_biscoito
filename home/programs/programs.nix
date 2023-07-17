{ config, pkgs, ... }: {

  imports = [
    ./packages.nix
    /run/user/1000/secrets/mail.nix
    /run/user/1000/secrets/task.nix
    ./code/lang.nix
    ./cli/btm.nix
    ./cli/exa.nix
    ./cli/fish.nix
    ./cli/git.nix
    ./cli/hyfetch.nix
    ./cli/yt-dlp.nix
    ./cli/nvim.nix
    ./cli/bat.nix
    ./gui/firefox.nix
  ];

}
