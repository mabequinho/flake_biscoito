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
    swaylock = {
      enable = true;
      settings = {
        color = "eff1f5";
        bs-hl-color = "dc8a78";
        caps-lock-bs-hl-color = "dc8a78";
        caps-lock-key-hl-color = "40a02b";
        inside-color = "00000000";
        inside-clear-color = "00000000";
        inside-caps-lock-color = "00000000";
        inside-ver-color = "00000000";
        inside-wrong-color = "00000000";
        key-hl-color = "40a02b";
        layout-bg-color = "00000000";
        layout-border-color = "00000000";
        layout-text-color = "4c4f69";
        line-color = "00000000";
        line-clear-color = "00000000";
        line-caps-lock-color = "00000000";
        line-ver-color = "00000000";
        line-wrong-color = "00000000";
        ring-color = "7287fd";
        ring-clear-color = "dc8a78";
        ring-caps-lock-color = "fe640b";
        ring-ver-color = "1e66f5";
        ring-wrong-color = "e64553";
        separator-color = "00000000";
        text-color = "4c4f69";
        text-clear-color = "dc8a78";
        text-caps-lock-color = "fe640b";
        text-ver-color = "1e66f5";
        text-wrong-color = "e64553";
      };
    };
  };
}
