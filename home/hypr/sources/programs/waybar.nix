{ config, pkgs, libs, inputs, ... }: {
  programs = {
    waybar = {
      enable = false;
      systemd = {
        enable = true;
        target = "hyprland-session.target";
      };
      settings = {
        microbar = {
          layer = "top";
          position = "top";
#          mode = "overlay";
          passthrough = false;
          spacing = 6;
          modules-left = [ "tray" ];
          modules-center = [ ];
          modules-right = [ "idle_inhibitor" "clock" ];
          "tray" = { "rotate" = 90; };
          "idle_inhibitor" = { "rotate" = 90; };
          "clock" = { "rotate" = 90; };
        };
      };
      style = ''
               * {
          border: none;
          border-radius: 0;
          font-family: Mononoki Nerd Font Mono;
        } 
      '';
    };
  };
}
