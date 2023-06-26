{ config, pkgs, lib, ... }: {
  services.xserver = {
    enable = true;
    excludePackages = [ pkgs.xterm ];
    desktopManager.gnome.enable = true;
    displayManager = {
      gdm = {
        enable = true;
        wayland = true;
        autoSuspend = true;
      };
      autoLogin = {
        enable = true;
        user = "mabeco";
      };
    };
  };

  services.power-profiles-daemon.enable = lib.mkForce false;
  qt.platformTheme = "gnome";
  programs = {
    dconf.enable = true;
    seahorse.enable = true;
    file-roller.enable = true;
  };
  services = {
    gnome = {
      core-utilities.enable = false;
      gnome-online-accounts.enable = false;
      gnome-keyring.enable = true;
      sushi.enable = true;
    };
  };
  environment.gnome.excludePackages = with pkgs; [ gnome-tour ];
  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
  environment.systemPackages = (with pkgs.gnome; [
    nautilus
    pkgs.gnome-console
    gnome-tweaks
    gnome-shell-extensions
    pomodoro
    eog
    gnome-calendar
  ]) ++ (with pkgs; [ dconf2nix ]) ++ (with pkgs.gnomeExtensions; [
    hide-activities-button
    gnome-bedtime
    disable-unredirect-fullscreen-windows
    espresso
    no-overview
  ]);
}
