{ config, pkgs, libs, ... }: {
  programs = {
    eww = {
      enable = true;
      package = pkgs.eww-wayland;
      configDir = ./sources;
    };
    kitty = {
      enable = true;
      font = {
        name = "Mononoki Nerd Font Mono";
        size = 9;
      };
      theme = "Atom";
    };
    obs-studio = { enable = true; };
    mpv = {
      enable = true;
    };
    imv = {
      enable = true;
    };
  };
}
