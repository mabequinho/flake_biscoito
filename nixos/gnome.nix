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
  services.gnome.core-utilities.enable = false;
  environment.gnome.excludePackages = with pkgs; [ gnome-tour ];
  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
  environment.systemPackages = (with pkgs.gnome; [
    gnome-terminal
    gnome-tweaks
    gnome-shell-extensions
    gnome-boxes
    file-roller
    seahorse
    nautilus
    pomodoro
  ]) ++ (with pkgs; [ dconf2nix ]) ++ (with pkgs.gnomeExtensions; [
    hide-top-bar
    hide-activities-button
    espresso
    pop-shell
  ]) ++ (with pkgs; [ hunspell ])
    ++ (with pkgs.hunspellDicts; [ en-us-large pt-br ]);
}
