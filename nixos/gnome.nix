{ config, pkgs, lib, ... }: {
  services.xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    desktopManager.gnome.enable = true;
    displayManager = {
      gdm = {
        enable = true;
        wayland = true;
      };
      autoLogin = {
        enable = true;
        user = "mabeco";
      };
    };
    videoDrivers = [ "amdgpu" ];
  };

  services.power-profiles-daemon.enable = lib.mkForce false;
  programs.dconf.enable = true;
  services.gnome.core-utilities.enable = true;
  environment.gnome.excludePackages = with pkgs.gnome; [
    pkgs.gnome-tour
    pkgs.gnome-text-editor
    pkgs.gnome-photos
    pkgs.gnome-console
    yelp
    simple-scan
    gnome-system-monitor
    gnome-maps
    gnome-logs
    gnome-font-viewer
    gnome-clocks
    gnome-characters
    gnome-calculator
    gnome-weather
    gnome-disk-utility
    epiphany
    baobab
    cheese
  ];
  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
  environment.systemPackages =
    (with pkgs.gnome; [ gnome-tweaks gnome-shell-extensions pomodoro ])
    ++ (with pkgs; [ dconf2nix libnotify virt-manager blackbox-terminal calibre ])
    ++ (with pkgs.gnomeExtensions; [
      hide-activities-button
      gnome-bedtime
      disable-unredirect-fullscreen-windows
      espresso
    ]);
}
