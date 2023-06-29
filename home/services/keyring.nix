{ config, pkgs, ... }: {
  services = {
    gnome-keyring = {
      enable = true;
      components = [ "ssh" ];
    };
  };
  Home.packages = with pkgs; [ libsecret ];
}
