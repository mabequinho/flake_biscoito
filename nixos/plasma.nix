{ config, pkgs, lib, ... }: {

  services = {
    xserver = {
      enable = true;
      displayManager = {
        autoLogin = {
          enable = true;
          user = "mabeco";
        };
        sddm = {
          enable = true;
        };
      };
      desktopManager = {
        plasma5 = {
          enable = true;
        };
      };
    };
  };

  programs = {
    dconf.enable = true;
  };
  
  environment = {
    plasma5.excludePackages = with pkgs // pkgs.Plasma5Packages; [ ];
  };

}
