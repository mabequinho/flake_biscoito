{ config, pkgs, libs, ... }: {
  programs = {
    eww = {
      enable = true;
      package = pkgs.eww-wayland;
      configDir = ./sources;
    };
    obs-studio = { enable = true; };
    mpv = { enable = true; };
    imv = { enable = true; };
    foot = {
      enable = true;
      settings = {
        main = {
          font = "Mononoki Nerd Font Mono:size=8";
          term = "xterm-256color";
        };
        # theme: Tempus Classic
        # author: Protesilaos Stavrou (https://protesilaos.com)
        # description: Dark theme with warm hues (WCAG AA compliant)
        colors = {
          foreground = "aeadaf";
          background = "232323";
          regular0 = "232323";
          regular1 = "d4823d";
          regular2 = "8c9e3d";
          regular3 = "b1942b";
          regular4 = "6e9cb0";
          regular5 = "b58d88";
          regular6 = "6da280";
          regular7 = "949d9f";
          bright0 = "312e30";
          bright1 = "d0913d";
          bright2 = "96a42d";
          bright3 = "a8a030";
          bright4 = "8e9cc0";
          bright5 = "d58888";
          bright6 = "7aa880";
          bright7 = "aeadaf";
        };
      };
    };
    swaylock.enable = true;
  };
}
