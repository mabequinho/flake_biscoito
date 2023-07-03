{ config, pkgs, libs, ... }: {

  imports = [ ./waybar.nix ];

  programs = {

    fuzzel = {
      enable = true;
      settings = {
        main = {
          terminal = "${pkgs.foot}/bin/foot";
          layer = "overlay";
          font = "MesloLGS Nerd Font Mono";
          icons-enable = no;
        };
        colors = {
          background = "fbf7f0ff";
          border = "ddadadff";
        };
        border = {
          width = 2;
          radius = 6;
        };
      };
    };

  };

}
