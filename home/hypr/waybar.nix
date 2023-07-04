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
          position = "left";
#          width = 600;
          spacing = 6;
          modules-left = [ "wlr/workspaces" ];
          modules-center = [ ];
          modules-right = [ "tray" "idle_inhibitor" "clock" ];
          "wlr/workspaces" = {
            "format" = ''<span size="large">{icon}</span>'';
            "on-click" = "activate";
            "format-icons" = {
              "active" = "";
              "default" = "";
              "urgent" = "";
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
            "format" = ''<span allow_breaks="true">{: %a %d %b %H:%M}</span>'';
            "max-length" = 25;
            "rotate" = 90;
          };
          "idle_inhibitor" = {
            "format" = "{icon}";
            "format-icons" = {
              "activated" = ''<span size="x-large"> 󰛊 </span>'';
              "deactivated" = ''<span size="x-large"> 󰾫 </span>'';
            };
            "timeout" = 60;
          };
          "tray" = { "spacing" = 6; };
        };
      };
      style = ''

        * {
          border: none;
          font-family: SF Pro Display;
          font-size: 12px;
        } 
        window#waybar {
                      background-color: rgba(251, 247, 240, 1);
                      border: 4px solid rgba(214, 199, 199, 1);
                      border-radius: 6px;
        }
        #clock {
          padding-bottom: 6px;
        }
      '';
    };
  };
}
