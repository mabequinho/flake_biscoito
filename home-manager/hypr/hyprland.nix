{ config, pkgs, libs, inputs, ... }: {
  imports = [ ./services.nix ./programs.nix ./packages.nix ];
  home.file.".config/hypr/catppuccin".source = inputs.catppuccin-hyprland;
  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    recommendedEnvironment = true;
    extraConfig = ''
       source=~/.config/hypr/catppuccin/themes/latte.conf
       #ENVS
       env = QT_QPA_PLATFORM,wayland

       exec-once=hyprctl setcursor Mokou 10 & hyprpaper & thunderbird
       exec-once= ${pkgs.polkit-kde-agent}/libexec/polkit-kde-authentication-agent-1
       windowrule = workspace 4 silent,thunderbird
       windowrulev2 = float,class:(.dev.tchx84.Portfolio-wrapped),title:(Portfolio)

       general {
       border_size = 2 
       gaps_in = 1
       gaps_out = 1
       layout = master
       col.active_border = $base
       col.inactive_border = $overlay0
       col.group_border_active = $base
       col.group_border = $overlay0
       col.group_border_locked_active = $base
       col.group_border_locked = $overlay0
       }
       master {
       new_is_master = false
       no_gaps_when_only = true
       orientation = right
       }
       decoration {
       rounding = 6 
       drop_shadow = false
       }
       input {
       follow_mouse = 1
       accel_profile = adaptive
       scroll_method = on_button_down
       scroll_button = 8
       }
       misc {
       disable_hyprland_logo = true
       disable_splash_rendering = true
       mouse_move_enables_dpms = true
       key_press_enables_dpms = true
       };

       # See https://wiki.hyprland.org/Configuring/Keywords/ for more
       $mainMod = SUPER

       #LAUNCH
       bind = $mainMod, return, exec, kitty
       bind = $mainMod, A, exec, tofi-drun --drun-launch=true 
       bind = ,Print, exec, grimblast --notify --cursor save screen ~/Pictures/Screenshots/$(date +"%F-%H-%M-%S").png

       #SLIDERS
       ##VOL
       bind = $mainMod, equal, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ 
       bind = $mainMod, minus, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
       ##BRIGHTNESS
       bind = $mainMod ALT, equal, exec, ddcutil setvcp 10 + 20 
       bind = $mainMod ALT, minus, exec, ddcutil setvcp 10 - 20

       #W ACTIONS
       bind = $mainMod, Q, killactive,
       bind = $mainMod, F, fullscreen, 0 
       bind = $mainMod, M, fakefullscreen,
       bind = $mainMod, space, togglefloating,
       bind = $mainMod, P, togglefloating,
       bind = $mainMod, P, pin,
       bind = $mainMod, X, exit,
       # to switch between windows in a floating workspace
       bind = SUPER,Tab,cyclenext,
       bind = SUPER,Tab,bringactivetotop,
       ##MASTER
       bind = $mainMod, S,layoutmsg,swapwithmaster master

       # Move focus with mainMod + [hjkl]
       bind = $mainMod, h, movefocus, l
       bind = $mainMod, l, movefocus, r
       bind = $mainMod, k, movefocus, u
       bind = $mainMod, j, movefocus, d

       # Move active window to direction with mainMod + SHITF + [hjkl]
       bind = $mainMod SHIFT, h, movewindow, l
       bind = $mainMod SHIFT, l, movewindow, r
       bind = $mainMod SHIFT, k, movewindow, u
       bind = $mainMod SHIFT, j, movewindow, d

      # Switch workspaces with mainMod + [0-9]
       bind = $mainMod, 1, workspace, 1
       bind = $mainMod, 2, workspace, 2
       bind = $mainMod, 3, workspace, 3
       bind = $mainMod, 4, workspace, 4

       # Move active window to a workspace with mainMod + ALT + [0-9]
       bind = $mainMod ALT, 1, movetoworkspace, 1
       bind = $mainMod ALT, 2, movetoworkspace, 2
       bind = $mainMod ALT, 3, movetoworkspace, 3
       bind = $mainMod ALT, 4, movetoworkspace, 4

       # Move/resize windows with mainMod + LMB/RMB and dragging
       bindm = $mainMod, mouse:272, movewindow
       bindm = $mainMod, mouse:273, resizewindow

    '';
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "adwaita";
  };
}
