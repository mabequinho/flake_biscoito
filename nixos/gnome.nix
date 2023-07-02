{ config, pkgs, ... }: {

  services = {
    xserver = {
      enable = true;
      displayManager = {
        autoLogin = {
          enable = true;
          user = "mabeco";
        };
        gdm = {
          enable = true;
          wayland = false;
          autoSuspend = true;
        };
      };
      desktopManager = { gnome = { enable = true; }; };
    };
    gnome = {
      core-utilities.enable = false;
      gnome-keyring.enable = true;
      sushi.enable = true;
    };
  };
  programs = {
    dconf.enable = true;
    file-roller.enable = true;
    seahorse.enable = true;
  };
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  environment = {
    systemPackages = with pkgs.gnome;
      [ nautilus
pkgs.qt6.qtwayland
pkgs.libsForQt5.qt5.qtwayland
 ] ++ (with pkgs.gnomeExtensions; [ appindicator ]);
    gnome.excludePackages = with pkgs.gnome; [ yelp ];
  };
systemd.services."getty@tty1".enable = false;
systemd.services."autovt@tty1".enable = false;
}
