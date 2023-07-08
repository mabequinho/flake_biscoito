{ config, pkgs, ... }: {

  services = { udev = { packages = with pkgs; [ android-udev-rules ]; }; };
  programs = { adb = { enable = true; }; };
}
