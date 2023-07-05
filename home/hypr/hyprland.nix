{ config, pkgs, ... }: {

  imports = [

    ./services.nix
    ./programs.nix
    ./packages.nix
    ./waybar.nix
    ./grayscale.nix

  ];

  wayland.windowManager.hyprland = {

    enable = true;
    systemdIntegration = true;
    recommendedEnvironment = true;
    plugins = [ ];
    extraConfig = ''

      monitor=HDMI-A-1,2560x1080@75,0x0,1

      #ENVS
      env = QT_QPA_PLATFORM,wayland
      env = GTK_CSD, 0

      #https://www.color-hex.com/color-palette/13735
      $act = rgb(ffffff)
      $ina = rgb(4c4c4c)

      exec-once = hyprctl setcursor Sanae 10 & hyprpaper & SVPManager
      exec-once = ${pkgs.polkit-kde-agent}/libexec/polkit-kde-authentication-agent-1
      windowrule = workspace 4 silent,thunderbird
      windowrulev2 = float,class:(.dev.tchx84.Portfolio-wrapped),title:(Portfolio)
      windowrulev2 = float,class:(mpv)
      windowrulev2 = float,class:(transmission-gtk),title:(Transmission)
      windowrulev2 = float,class:(org.kde.polkit-kde-authentication-agent-1),title:(Authentication Required — PolicyKit1 KDE Agent)

      #RSIBREAK
      windowrulev2 = pin,class:(rsibreak),title:(RSIBreak)
      windowrulev2 = dimaround,class:(rsibreak),title:(RSIBreak)
      windowrulev2 = center,class:(rsibreak),title:(RSIBreak)
      #not available on 26.0 as of 5/07 windowrulev2 = stayfocused,class:(rsibreak),title:(RSIBreak)

      general {
      border_size = 2 
      gaps_in = 0 
      gaps_out = 0 
      resize_on_border = true
      layout = master
      col.active_border = $act
      col.inactive_border = $ina
      col.group_border_active = $act
      col.group_border = $ina
      col.group_border_locked_active = $act
      col.group_border_locked = $ina
      no_cursor_warps = false
      no_focus_fallback = true
      }

      master {
      new_is_master = false
      no_gaps_when_only = false
      orientation = right
      }

      decoration {
      #rounding = 6 
      dim_around = 0.8
      screen_shader = ~/.config/hypr/grayscale.frag
      }

      input {
      kb_layout = us,us
      kb_variant = ,intl
      kb_options = grp:rctrl_toggle,grp_led:caps
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
      enable_swallow = true
      swallow_regex = foot
      };

      # See https://wiki.hyprland.org/Configuring/Keywords/ for more
      $mainMod = SUPER

      #LAUNCH
      bind = $mainMod, return, exec, foot
      bind = $mainMod, B, exec, librewolf 
      bind = $mainMod, E, exec, foot emacs
      bind = $mainMod, A, exec, fuzzel
      bind = $mainMod, R, exec, notify-send -t 6000 Rebuilding ; pkill waybar ; notify-send -t 6000 "NIX REBUILD" "$(sudo nixos-rebuild switch -j 8 --flake $HOME/Documents/git/flake_biscoito --impure 2>&1 1>/dev/null | tac)" 
      ## Print
      bind = ,Print, exec, grimblast --notify --cursor --freeze copysave area ~/Pictures/Screenshots/$(date +"%F-%H-%M-%S").png
      bind = SHIFT,Print, exec, grimblast --notify --cursor --freeze copysave screen ~/Pictures/Screenshots/$(date +"%F-%H-%M-%S").png

      #CTL
      ##VOL
      bind = $mainMod, equal, exec, wpctl set-volume -l 1.5 @DEFAULT_AUDIO_SINK@ 5%+ 
      bind = $mainMod, minus, exec, wpctl set-volume @DEFAULT_AUDIO_SINK@ 5%-
      bind = $mainMod, backspace, exec, wpctl set-mute @DEFAULT_AUDIO_SINK@ toggle
      bind = $mainMod ALT, backspace, exec, wpctl set-mute @DEFAULT_AUDIO_SOURCE@ toggle
      ##MPRIS
      bind = $mainMod, backslash, exec, playerctl play-pause
      ##BRIGHTNESS
      bind = $mainMod ALT, equal, exec, ddcutil setvcp 10 + 10 
      bind = $mainMod ALT, minus, exec, ddcutil setvcp 10 - 10

      #W ACTIONS
      bind = $mainMod, Q, killactive,
      bind = $mainMod, F, fullscreen, 0 
      bind = $mainMod, M, fakefullscreen,
      bind = $mainMod, T, togglefloating,
      bind = $mainMod, P, togglefloating,
      bind = $mainMod, P, pin,
      bind = $mainMod, X, exit,
      # to switch between windows in a floating workspace
      bind = SUPER,Tab,cyclenext,
      bind = SUPER,Tab,bringactivetotop,
      ## MASTER
      bind = $mainMod, S,layoutmsg,swapwithmaster master

      # Move focus with mainMod + [hjkl]
      bind = $mainMod, h, movefocus, l
      bind = $mainMod, l, movefocus, r
      bind = $mainMod, k, movefocus, u
      bind = $mainMod, j, movefocus, d

      # Move active window to direction with mainMod + SHITF + [hjkl]
      bind = $mainMod ALT, h, movewindow, l
      bind = $mainMod ALT, l, movewindow, r
      bind = $mainMod ALT, k, movewindow, u
      bind = $mainMod ALT, j, movewindow, d

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

  gtk = {

    enable = true;
    cursorTheme = { name = "Sanae"; };

    iconTheme = {
      package = pkgs.yaru-theme;
      name = "Yaru";
    };

    font = {
      package = pkgs.nerdfonts;
      name = "SF Pro Display";
      size = 12;
    };

  };

}
