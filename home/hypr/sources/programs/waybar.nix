{ config, pkgs, libs, inputs, ... }: {
  programs = {
    waybar = {
      enable = true;
      package = inputs.hyprland.packages.${pkgs.system}.waybar-hyprland;
      systemd = {
        enable = true;
        target = "hyprland-session.target";
      };
      settings = {
        microbar = {
          layer = "top";
          position = "top";
          width = 800;
          spacing = 6;
          margin-left = 12;
          margin-right = 36;
          modules-left = [ "wlr/workspaces" ];
          modules-center = [ "clock" "idle_inhibitor" ];
          modules-right = [ "tray" ];
          "wlr/workspaces" = {
            "format" = ''<span size="xx-large">{icon}</span>'';
            "on-click" = "activate";
            "format-icons" = {
              "1" = "󰎥";
              "2" = "󰎨";
              "3" = "󰎫";
              "4" = "󰎲";
            };
            "persistent_workspaces" = {
              "1" = [ ];
              "2" = [ ];
              "3" = [ ];
              "4" = [ ];
            };
          };
          "clock" = {
            "interval" = 60;
            "format" = "{:%a, %d %b %H:%M}";
            "max-length" = 25;
          };
          "idle_inhibitor" = {
            "format" = "{icon}";
            "format-icons" = {
              "activated" = "";
              "deactivated" = "";
            };
          };
          "tray" = { "spacing" = 6; };
        };
      };
      style = ''
               * {
          border: none;
          border-radius: 0;
          font-family: Mononoki Nerd Font Mono;
          font-size: 16px;
        } 
      '';
    };
  };
}
