{ config, pkgs, libs, ... }: {
  services = {
    mako = {
      enable = true;
      anchor = "top-right";
      backgroundColor = "#eff1f5";
      borderColor = "#1e1e2e";
      progressColor="over #ccd0da";
      font = "Mononoki Nerd Font Mono 10";
      icons = false;
      textColor = "#4c4f69";
      defaultTimeout = 10000;
      borderRadius = 6;
      borderSize = 2;

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
