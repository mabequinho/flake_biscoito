{ config, pkgs, libs, ... }: {
  programs = {
    waybar = {
      enable = false;
#      systemd = {
#        enable = true;
#        target = "hyprland-session.target";
#      };
    };
  };
}
