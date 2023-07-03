{ config, pkgs, ... }: {

  services = {

    greetd = {
      enable = true;
      package = pkgs.greetd.tuigreet;
      settings = {
        initial_session = {
          command = "Hyprland";
          user = "mabeco";
        };
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
