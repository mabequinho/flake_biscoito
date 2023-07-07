{ config, pkgs, lib, ... }: {

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
          wayland = true;
          autoSuspend = true;
        };
      };
      desktopManager = {
        gnome = {
          enable = true;
          extraGSettingsOverridePackages = with pkgs;
            [ nautilus-open-any-terminal ];
        };
      };
    };
    gnome = {
      core-utilities.enable = true;
      gnome-keyring.enable = true;
      sushi.enable = true;
    };
    power-profiles-daemon.enable = lib.mkForce false;
  };
  programs = {
    file-roller.enable = true;
    seahorse.enable = true;
  };
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  environment = {
    systemPackages = with pkgs.gnome // pkgs // pkgs.gnomeExtensions; [
      nautilus-python
      gnome-tweaks

      dconf2nix
      nautilus-open-any-terminal
      qt6.qtwayland
      libsForQt5.qt5.qtwayland
      wl-clipboard

      appindicator
      dash-to-panel
      gnome-bedtime
      disable-unredirect-fullscreen-windows
    ];
    gnome.excludePackages = with pkgs // pkgs.gnome; [

      baobab
      epiphany
      pkgs.gnome-text-editor
      gnome-calculator
      gnome-characters
      gnome-clocks
      pkgs.gnome-console
      gnome-contacts
      gnome-font-viewer
      gnome-logs
      gnome-maps
      gnome-music
      pkgs.gnome-photos
      gnome-weather
      pkgs.gnome-connections
      simple-scan
      totem
      yelp
      gnome-tour
      geary

    ];
  };
  #Jul - 2023 issue https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
}
