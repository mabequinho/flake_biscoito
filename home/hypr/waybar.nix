{ config, pkgs, libs, inputs, ... }: {
  # fix for  https://github.com/nix-community/home-manager/issues/4099
  systemd.user.services.waybar.Service.Environment =
    "PATH=${config.home.profileDirectory}/bin";
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
          position = "bottom";
          #          width = 600;
          spacing = 6;
          modules-left = [ "wlr/workspaces" "wireplumber" ];
          modules-center = [ "wlr/taskbar" ];
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
            "format" = "{:%a, %d %b %H:%M}";
            "max-length" = 25;
            "rotate" = 0;
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
          "wireplumber" = {
            "format" = "";
            "format-muted" = ''<span size="x-large">󰖁</span>'';
          };
          "wlr/taskbar" = {
            "icon-theme" = [ "Yaru" "Hicolor" ];
            "icon-size" = 20;
            "tooltip-format" = "{title}";
            "on-click" = "activate";
            "on-click-middle" = "close";
          };
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
          padding-right: 6px;
        }
        #taskbar button.active {
          background-color: rgba(214, 199, 199, 1);
        }
      '';
    };
  };
}
