{ config, pkgs, libs, ... }: {
  services = {
    rsibreak.enable = false;
    mako = {
      enable = true;
      anchor = "top-right";
      backgroundColor = "#232323";
      textColor = "#aeadaf";
      progressColor = "over #d4823d";
      borderColor = "#ddadad";
      font = "Mononoki Nerd Font Mono 8";
      icons = false;
      defaultTimeout = 10000;
      borderRadius = 6;
      borderSize = 2;
    };
    udiskie = {
      enable = true;
      automount = true;
      notify = true;
      tray = "never";
    };
    swayidle = {
      enable = true;
      systemdTarget = "hyprland-session.target";
      events = [{
        event = "before-sleep";
        command = "${pkgs.swaylock}/bin/swaylock -fF";
      }];
      timeouts = [
        {
          timeout = 300;
          command = "${pkgs.swaylock}/bin/swaylock -fF";
        }
        {
          timeout = 360;
          command = "${pkgs.hyprland}/bin/hyprctl dispatch dpms off";
        }
        {
          timeout = 600;
          command = "${pkgs.systemc}/bin/systemctl suspend";
        }
      ];
    };
  };
}
