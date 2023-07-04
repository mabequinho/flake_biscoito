{ config, pkgs, libs, ... }: {
  services = {

    mako = {
      enable = true;
      anchor = "top-right";
      height = 1000;
      backgroundColor = "#FBF7F0";
      textColor = "#000000";
      progressColor = "over #d4823d";
      borderColor = "#ddadad";
      font = "SF Pro Display 12";
      icons = false;
      defaultTimeout = 6000;
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
        command = "${pkgs.waylock}/bin/waylock -fork-on-lock";
      }];

      timeouts = [
        {
          timeout = 300;
          command = "${pkgs.waylock}/bin/waylock -fork-on-lock";
        }
        {
          timeout = 360;
          command = "${pkgs.hyprland}/bin/hyprctl dispatch dpms off";
        }
        {
          timeout = 600;
          command = "${pkgs.systemd}/bin/systemctl suspend";
        }
      ];

    };

    gammastep = {
      enable = true;
      provider = "geoclue2";
      temperature = {
        day = 6500;
        night = 3500;
      };
    };

  };
}
