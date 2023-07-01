{ config, ... }: {

  services = {
    xserver = {
      enable = false;
      displayManager = {
        autologin = {
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
      [ nautilus ] ++ (with pkgs.gnomeExtensions; [ appindicator ]);
    gnome.excludePackages = with pkgs.gnome; [ yelp ];
  };
}
