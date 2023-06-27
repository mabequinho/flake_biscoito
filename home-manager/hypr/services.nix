{ config, pkgs, libs, ... }: {
  services = {
    mako = {
      enable = true;
      anchor = "top-right";
      backgroundColor = "#FFC1CCFF"; # bubblegum
      borderColor = "C1EBFF"; # Very pale blue
      font = "Ubuntu Nerd Font Condensed 10";
      icons = false;
      textColor = "#000000FF";
    };
    udiskie = {
      enable = true;
      automount = true;
      notify = true;
    };
    flameshot = { enable = true; };
    swayidle = { enable = false; };
  };
}
