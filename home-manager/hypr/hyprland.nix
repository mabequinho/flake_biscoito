{ config, pkgs, libs, ... }: {
  imports = [
    #./services.nix 
    ./programs.nix
    ./packages.nix
  ];
  wayland.windowManager.hyprland = {
    enable = true;
    systemdIntegration = true;
    recommendedEnvironment = true;
    extraConfig = ''

       #ENVS
       env = QT_QPA_PLATFORM,wayland
       env = XCURSOR_THEME,Tewi
       env = XCURSOR_SIZE,10

       exec-once=hyprctl setcursor Tewi 10 & hyprpaper & thunderbird
       exec-once= ${pkgs.polkit-kde-agent}/libexec/polkit-kde-authentication-agent-1
       windowrule = workspace 4 silent,thunderbird

       $colorA = rgb(ffc1cc)
       $colorI = rgb(c1fff4)

       general {
       border_size = 3 
       gaps_in = 0
       gaps_out = 0
       layout = master
       col.active_border = $colorA  
       col.inactive_border = $colorI 
       col.group_border = $colorI 
       col.group_border_active = $colorA
       col.group_border_locked = $colorI 
       col.group_border_locked_active = $colorA
       }
       master {
       new_is_master = false
       no_gaps_when_only = true
       orientation = right
       }
       decoration {
       rounding = 3 
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
       $mainMod = CTRL 

       #LAUNCH
       bind = $mainMod, return, exec, kitty
       bind = $mainMod, A, exec, tofi-drun --drun-launch=true 
       bind=,Print,exec,flameshot

       #W ACTIONS
       bind = $mainMod, Q, killactive,
       bind = $mainMod, F, fullscreen, 1
       bind = $mainMod, X, exit,
       bind = $mainMod, P, pin,
       ##MASTER
       bind = $mainMod, M,layoutmsg,swapwithmaster master

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

    '';
  };
  qt = {
    enable = true;
    platformTheme = "gtk";
    style.name = "adwaita";
  };
  gtk = {
    enable = true;
    cursorTheme.name = "Tewi";
  };
}
