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
      excludePackages = with pkgs; [ xterm ];
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
    #    seahorse.enable = true;
  };
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  environment = {
    systemPackages = with pkgs.gnome // pkgs // pkgs.gnomeExtensions; [
      gnome-terminal
      nautilus-python
      gnome-tweaks
      gnome.pomodoro

      gradience
      adw-gtk3
      tela-circle-icon-theme
      flat-remix-gnome

      dconf2nix
      nautilus-open-any-terminal
      qt6.qtwayland
      qgnomeplatform-qt6
      adwaita-qt6
      libsForQt5.qt5.qtwayland
      wl-clipboard
      libnotify

      gnome-bedtime
      disable-unredirect-fullscreen-windows
      dock-from-dash
      hide-top-bar
    ];
    gnome.excludePackages = with pkgs // pkgs.gnome; [

      baobab
      epiphany
      pkgs.gnome-text-editor
      gnome-calculator
      gnome-calendar
      gnome-characters
      #gnome-clocks
      gnome-music
      pkgs.gnome-console
      gnome-contacts
      gnome-font-viewer
      gnome-logs
      gnome-maps
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
  qt = {
    enable = true;
    platformTheme = "gnome";
    style = "adwaita";
  };
  #Jul - 2023 issue https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
}
