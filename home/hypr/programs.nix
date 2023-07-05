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
          background = "000000ff";
          border = "ffffffff";
          text = "ffffffff";
          selection = "ffffffff";
          selection-text = "000000ff";
        };
        border = {
          width = 2;
          radius = 0;
        };
      };
    };

  };

}
