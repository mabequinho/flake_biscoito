{ config, pkgs, ... }: {

  services = {

    xserver = {
      enable = true;
      displayManager = {
        autoLogin = {
          enable = true;
          user = "mabeco";
        };
        sddm = { enable = true; };
      };
    };

    geoclue2.enable = true;

    udisks2.enable = true;

  };

  programs = {

    ssh = { startAgent = true; };

  };

  security.pam.services.waylock.text = ''
    auth include login 
  '';

}
