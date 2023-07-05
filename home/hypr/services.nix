{ config, pkgs, libs, ... }: {
  services = {

    mako = {
      enable = true;
      anchor = "bottom-right";
      height = 1000;
      backgroundColor = "#000000";
      textColor = "#ffffff";
      progressColor = "over #ffffff";
      borderColor = "#ffffff";
      font = "SF Pro Display 12";
      icons = false;
      defaultTimeout = 6000;
      borderRadius = 0;
      borderSize = 2;
      format = "<big>%s\\n</big>\\n%b";
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

  };
}
