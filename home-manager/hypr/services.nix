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
    swayidle = { enable = true; };
  };
}
