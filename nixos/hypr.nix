{ config, pkgs, ... }: {

  services = {

    greetd = {
      enable = true;
      settings = {
        default_session = {
          command = "${pkgs.greetd.tuigreet}/bin/tuigreet --cmd Hyprland";
        };
        initial_session = {
          command = "Hyprland";
          user = "mabeco";
        };
      };
    };

    geoclue2.enable = true;
    udisks2.enable = true;

  };

  environment.systemPackages = [ pkgs.greetd.tuigreet ];

  programs = { ssh = { startAgent = true; }; };

  security.pam.services.waylock.text = ''
    auth include login 
  '';

}
