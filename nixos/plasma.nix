{ config, pkgs, lib, ... }: {

  services = {
    xserver = {
      enable = true;
      displayManager = {
        autoLogin = {
          enable = true;
          user = "mabeco";
        };
        sddm = { enable = true; };
      };
      desktopManager = { plasma5 = { enable = true; }; };
      libinput = {
        mouse = {
          scrollMethod = "button";
          scrollButton = 8;
          middleEmulation = true;
        };
      };
      excludePackages = [ pkgs.xterm ];
    };
  };

  programs = { dconf.enable = true; };

  environment = {
    plasma5.excludePackages = with pkgs // pkgs.Plasma5Packages; [ ];
    systemPackages = with pkgs // pkgs.qt6Packages // pkgs.libsForQt5; [
      kde-gtk-config
      latte-dock
    ];
  };

}
