{ config, pkgs, ... }: {
  services = {
    gnome-keyring = {
      enable = true;
      components = [ "ssh" ];
    };
    home.packages = with pkgs; [
      libsecret
    ];
}
