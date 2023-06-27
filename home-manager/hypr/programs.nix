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
      theme = "Catppuccin-Latte";
    };
    obs-studio = { enable = true; };
    mpv = { enable = true; };
    imv = { enable = true; };
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
