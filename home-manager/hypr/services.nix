{ config, pkgs, libs, ... }: {
  services = {
    mako = {
      enable = true;
      anchor = "top-right";
      backgroundColor = "#FFC1CCFF"; # bubblegum
      borderColor = "#C1EBFF"; # Very pale blue
      font = "Ubuntu Nerd Font Condensed 10";
      icons = false;
      textColor = "#000000FF";
      defaultTimeout = 10000;
    };
    udiskie = {
      enable = true;
      automount = true;
      notify = true;
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
          timeout = 600;
          command = "${pkgs.systemc}/bin/systemctl suspend";
        }
      ];
    };
  };
}
