{ config, pkgs, libs, ... }: {

  imports = [ ./waybar.nix ];

  programs = {

    fuzzel = {
      enable = true;
      settings = {
        main = {
          terminal = "${pkgs.foot}/bin/foot";
          layer = "overlay";
          font = "SF Pro Display:size=12";
          icons-enabled = "yes";
          icon-theme = "Yaru";
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
