{ config, pkgs, libs, ... }: {
  programs = {

    waybar = {
      enable = true;
      systemd.enable = true;
      settings = [ ];
      style = [ ];

    };
    imv = {
      enable = true;

    };
    mpv = {
      enable = true;

    };
    swaylock = {
      enable = true;

    };
    foot = {
      enable = true;

    };
    obs-studio = {
      enable = true;

    };

  };
}
