{ config, pkgs, ... }: {

  services = {
    xserver = {
      enable = true;
      displayManager = {
        autoLogin = {
          enable = false;
          user = "mabeco";
        };
        gdm = {
          enable = true;
          wayland = true;
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
    gnome.excludePackages = with pkgs; [ gnome-tour ];
  };
systemd.services."getty@tty1".enable = false;
systemd.services."autovt@tty1".enable = false;
}
