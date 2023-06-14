# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "org/gnome/control-center" = {
      last-panel = "user-accounts";
      window-state = mkTuple [ 980 640 ];
    };

    "org/gnome/desktop/app-folders" = {
      folder-children = [ "Utilities" "YaST" "502da463-a171-48bf-a485-b27e6ef744e1" "bf60595e-f9f5-4bee-aa76-18c109f1caaa" "421bec7f-e535-4e61-bd60-3f1f22d6ab51" "aac2832b-c83a-490c-97f7-9071a4548ce3" ];
    };

    "org/gnome/desktop/app-folders/folders/421bec7f-e535-4e61-bd60-3f1f22d6ab51" = {
      apps = [ "vlc.desktop" "mupdf.desktop" ];
      name = "Viewer";
      translate = false;
    };

    "org/gnome/desktop/app-folders/folders/502da463-a171-48bf-a485-b27e6ef744e1" = {
      apps = [ "firefox.desktop" "thunderbird.desktop" "info.mumble.Mumble.desktop" ];
      name = "Internet";
    };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [ "org.gnome.seahorse.Application.desktop" "org.gnome.tweaks.desktop" "org.gnome.Settings.desktop" "org.gnome.Extensions.desktop" "nixos-manual.desktop" ];
      categories = [ "X-GNOME-Utilities" ];
      excluded-apps = [ "org.gnome.FileRoller.desktop" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/YaST" = {
      categories = [ "X-SuSE-YaST" ];
      name = "suse-yast.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/aac2832b-c83a-490c-97f7-9071a4548ce3" = {
      apps = [ "org.gnome.Nautilus.desktop" "org.gnome.FileRoller.desktop" "org.gnome.Pomodoro.desktop" ];
      name = "Accessories";
    };

    "org/gnome/desktop/app-folders/folders/bf60595e-f9f5-4bee-aa76-18c109f1caaa" = {
      apps = [ "org.gnome.Boxes.desktop" "nvim.desktop" ];
      name = "Dev";
      translate = false;
    };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/vnc-l.webp";
      picture-uri-dark = "file:///run/current-system/sw/share/backgrounds/gnome/vnc-d.webp";
      primary-color = "#77767B";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      enable-hot-corners = false;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
    };

    "org/gnome/desktop/notifications" = {
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = 30;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      lock-delay = mkUint32 300;
      picture-options = "zoom";
      picture-uri = "file:///run/current-system/sw/share/backgrounds/gnome/vnc-l.webp";
      primary-color = "#77767B";
      secondary-color = "#000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [ "org.gnome.Contacts.desktop" "org.gnome.Documents.desktop" "org.gnome.Nautilus.desktop" ];
    };

    "org/gnome/desktop/session" = {
      idle-delay = mkUint32 720;
    };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

    "org/gnome/desktop/wm/keybindings" = {
      lower = [ "<Super>j" ];
      maximize = [ "<Super>k" ];
      minimize = [];
      move-to-workspace-1 = [ "<Alt><Super>1" ];
      move-to-workspace-2 = [ "<Alt><Super>2" ];
      move-to-workspace-3 = [ "<Alt><Super>3" ];
      move-to-workspace-4 = [ "<Alt><Super>4" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
    };

    "org/gnome/evolution-data-server" = {
      migrated = true;
    };

    "org/gnome/mutter" = {
      center-new-windows = true;
      edge-tiling = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Super>h" ];
      toggle-tiled-right = [ "<Super>l" ];
    };

    "org/gnome/nautilus/preferences" = {
      migrated-gtk-settings = true;
    };

    "org/gnome/pomodoro/state" = {
      timer-date = "2023-06-14T20:31:04+0000";
      timer-elapsed = 0.0;
      timer-paused = false;
      timer-score = 0.0;
      timer-state = "null";
      timer-state-date = "2023-06-14T20:31:04+0000";
      timer-state-duration = 0.0;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [ "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/" ];
      email = [ "<Super>m" ];
      home = [ "<Super>f" ];
      logout = [ "<Super>x" ];
      mic-mute = [ "<Alt><Super>BackSpace" ];
      screensaver = [];
      volume-down = [ "<Super>minus" ];
      volume-mute = [ "<Super>BackSpace" ];
      volume-up = [ "<Super>equal" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" = {
      binding = "<Super>Return";
      command = "gnome-termianl";
      name = "terminal";
    };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 1200;
    };

    "org/gnome/shell" = {
      app-picker-layout = "[{'aac2832b-c83a-490c-97f7-9071a4548ce3': <{'position': <0>}>, 'bf60595e-f9f5-4bee-aa76-18c109f1caaa': <{'position': <1>}>, '502da463-a171-48bf-a485-b27e6ef744e1': <{'position': <2>}>, '421bec7f-e535-4e61-bd60-3f1f22d6ab51': <{'position': <3>}>, 'Utilities': <{'position': <4>}>}]";
      enabled-extensions = [ "pomodoro@arun.codito.in" "auto-move-windows@gnome-shell-extensions.gcampax.github.com" "espresso@coadmunkee.github.com" ];
      favorite-apps = [ "org.gnome.Terminal.desktop" ];
      welcome-dialog-last-shown-version = "44.2";
    };

    "org/gnome/shell/app-switcher" = {
      current-workspace-only = true;
    };

    "org/gnome/shell/extensions/auto-move-windows" = {
      application-list = [ "org.gnome.Pomodoro.desktop:4" "thunderbird.desktop:4" ];
    };

    "org/gnome/shell/extensions/espresso" = {
      has-battery = false;
      user-enabled = false;
    };

    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [];
      switch-to-application-2 = [];
      switch-to-application-3 = [];
      switch-to-application-4 = [];
      switch-to-application-5 = [];
      switch-to-application-6 = [];
      switch-to-application-7 = [];
      switch-to-application-8 = [];
      switch-to-application-9 = [];
      toggle-application-view = [ "<Super>a" ];
      toggle-message-tray = [];
    };

    "org/gnome/tweaks" = {
      show-extensions-notice = false;
    };

    "system/locale" = {
      region = "pt_BR.UTF-8";
    };

  };
}
