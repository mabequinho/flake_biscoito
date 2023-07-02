# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
    "desktop/calendar" = { show-weekdate = true; };

    "desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "us+alt-intl" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "desktop/interface" = {
      clock-show-seconds = false;
      clock-show-weekday = true;
      color-scheme = "default";
      cursor-theme = "Sanae";
      document-font-name = "Ubuntu Nerd Font Condensed 11";
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Ubuntu Nerd Font Condensed 10";
      icon-theme = "Yaru-magenta";
      monospace-font-name = "UbuntuMono Nerd Font Mono 10";
    };
    
    "desktop/peripherals/trackball" = { scroll-wheel-emulation-button = 8; };

    "desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = 7;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

   
    "desktop/session" = { idle-delay = mkUint32 720; };

    "desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      lower = [ "<Super>j" ];
      maximize = [ "<Super>k" ];
      minimize = [ ];
      move-to-workspace-1 = [ "<Alt><Super>1" ];
      move-to-workspace-2 = [ "<Alt><Super>2" ];
      move-to-workspace-3 = [ "<Alt><Super>3" ];
      move-to-workspace-4 = [ "<Alt><Super>4" ];
      switch-input-source = [ "<Super>space" "XF86Keyboard" ];
      switch-input-source-backward =
        [ "<Shift><Super>space" "<Shift>XF86Keyboard" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
      unmaximize = [ "<Super>Down" "<Alt>F5" ];
    };

    "desktop/wm/preferences" = {
      auto-raise = true;
      button-layout = "appmenu:close";
      focus-mode = "sloppy";
      num-workspaces = 4;
    };

    "mutter" = {
      attach-modal-dialogs = true;
      edge-tiling = true;
      workspaces-only-on-primary = false;
    };

    "mutter/keybindings" = {
      toggle-tiled-left = [ "<Super>h" ];
      toggle-tiled-right = [ "<Super>l" ];
    };

    "mutter/wayland/keybindings" = { restore-shortcuts = [ "<Super>Escape" ]; };

    "nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
      ];
      email = [ "<Super>m" ];
      home = [ "<Super>f" ];
      magnifier-zoom-in = [ ];
      magnifier-zoom-out = [ ];
      mic-mute = [ "<Alt><Super>BackSpace" ];
      screensaver = [ ];
      search = [ "<Super>s" ];
      volume-down = [ "<Super>minus" ];
      volume-mute = [ "<Super>BackSpace" ];
      volume-up = [ "<Super>equal" ];
      www = [ "<Super>b" ];
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom0" = {
      binding = "<Super>Return";
      command = "foot";
      name = "terminal";
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Alt><Super>equal";
      command = "ddcutil setvcp 10 + 20";
      name = "backlight up";
    };

    "settings-daemon/plugins/media-keys/custom-keybindings/custom2" = {
      binding = "<Alt><Super>minus";
      command = "ddcutil setvcp 10 - 20";
      name = "backlight down";
    };

    "settings-daemon/plugins/power" = {
      power-button-action = "interactive";
      sleep-inactive-ac-timeout = 900;
    };

    "shell" = {
     enabled-extensions = [
        "appindicatorsupport@rgcjonas.gmail.com"
        "user-theme@gnome-shell-extensions.gcampax.github.com"
        "dashbar@fthx"
      ];
      favorite-apps =
        [ "org.codeberg.dnkl.foot.desktop" "org.gnome.Nautilus.desktop" ];
      welcome-dialog-last-shown-version = "44.2";
    };

    "shell/app-switcher" = { current-workspace-only = true; };

    "shell/extensions/appindicator" = {
      icon-brightness = -2.7755575615628914e-17;
      icon-opacity = 255;
      icon-saturation = 0.9999999999999999;
      icon-size = 0;

    "shell/extensions/user-theme" = { name = "Yaru-magenta-dark"; };

    "shell/keybindings" = {
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
      switch-to-application-5 = [ ];
      switch-to-application-6 = [ ];
      switch-to-application-7 = [ ];
      switch-to-application-8 = [ ];
      switch-to-application-9 = [ ];
      toggle-application-view = [ "<Super>a" ];
      toggle-message-tray = [ ];
      toggle-overview = [ ];
    };

    "tweaks" = { show-extensions-notice = false; };

  };
}
