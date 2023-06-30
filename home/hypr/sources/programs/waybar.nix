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
          spacing = 12;
          modules-left = [ "wlr/workspaces" ];
          modules-center = [ "idle_inhibitor" "clock" ];
          modules-right = [ "tray" ];
          "wlr/workspaces" = {
            "format" = ''<span size="large">{icon}</span>'';
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
            "on-scroll-up" = "hyprctl dispatch workspace e+1";
            "on-scroll-down" = "hyprctl dispatch workspace e-1";
          };
          "clock" = {
            "interval" = 60;
            "format" = "{:%a, %d %b %H:%M}";
            "max-length" = 25;
          };
          "idle_inhibitor" = {
            "format" = "{icon}";
            "format-icons" = {
              "activated" = ''<span size="x-large">󰛊 </span>'';
              "deactivated" = ''<span size="x-large">󰾫 </span>'';
            };
            "timeout" = 60;
          };
          "tray" = { "spacing" = 6; };
        };
      };
      style = ''
        * {
          border: none;
          border-radius: 6;
          font-family: MesloLGS Nerd Font;
          font-size: 12px;
        } 
        window#waybar {
                      background-color: rgba(251, 247, 240, 1);
                      border: 2px solid rgba(214, 199, 199, 1);
        }
      '';
    };
  };
}
