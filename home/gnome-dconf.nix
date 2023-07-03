# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {

    "org/gnome/desktop/input-sources" = {
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "us+alt-intl" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      cursor-theme = "Reisen";
      font-name = "MesloLGS Nerd Font 9";
      document-font-name = "MesloLGS Nerd Font 9";
      monospace-font-name = "MesloLGS Nerd Font Mono 9";
      clock-show-weekday = true;
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/peripherals/trackball" = {
      scroll-wheel-emulation-button = 8;
    };

    "org/gnome/desktop/privacy" = {
      old-files-age = mkUint32 30;
      recent-files-max-age = 30;
      remove-old-temp-files = true;
      remove-old-trash-files = true;
    };

    "org/gnome/desktop/session" = { idle-delay = mkUint32 300; };

    "org/gnome/desktop/wm/keybindings" = {
      close = [ "<Super>q" ];
      lower = [ "<Super>j" ];
      maximize = [ "<Super>k" ];
      minimize = [ ];
      move-to-workspace-1 = [ "<Alt><Super>1" ];
      move-to-workspace-2 = [ "<Alt><Super>2" ];
      move-to-workspace-3 = [ "<Alt><Super>3" ];
      move-to-workspace-4 = [ "<Alt><Super>4" ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      action-right-click-titlebar = "none";
      button-layout = "close:appmenu";
      focus-mode = "sloppy";
      resize-with-right-button = true;
    };

    "org/gnome/mutter" = { edge-tiling = true; };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Super>h" ];
      toggle-tiled-right = [ "<Super>l" ];
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
      ];
      email = [ "<Super>m" ];
      home = [ "<Super>f" ];
      logout = [ "<Super>x" ];
      magnifier-zoom-in = [ ];
      magnifier-zoom-out = [ ];
      mic-mute = [ "<Alt><Super>BackSpace" ];
      play = [ "<Super>backslash" ];
      screensaver = [ ];
      search = [ "<Super>s" ];
      volume-down = [ "<Super>minus" ];
      volume-mute = [ "<Super>BackSpace" ];
      volume-up = [ "<Super>equal" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" =
      {
        binding = "<Super>Return";
        command = "foot";
        name = "terminal";
      };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" =
      {
        binding = "<Alt><Super>equal";
        command = "ddcutil setvcp 10 + 20";
        name = "backlight up";
      };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" =
      {
        binding = "<Alt><Super>minus";
        command = "ddcutil setvcp 10 - 20";
        name = "backlight down";
      };

    "org/gnome/settings-daemon/plugins/power" = {
      power-button-action = "interactive";
    };

    "org/gnome/shell" = {
      enabled-extensions = [
        "auto-move-windows@gnome-shell-extensions.gcampax.github.com"
        "gnomebedtime@ionutbortis.gmail.com"
        "unredirect@vaina.lt"
        "dash-to-panel@jderose9.github.com"
      ];
      favorite-apps =
        [ "org.gnome.Nautilus.desktop" "org.codeberg.dnkl.foot.desktop" ];
      welcome-dialog-last-shown-version = "44.2";
    };

    "org/gnome/shell/app-switcher" = { current-workspace-only = true; };

    "org/gnome/shell/extensions/auto-move-windows" = {
      application-list = [
        "org.telegram.desktop.desktop:4"
        "Fluffychat.desktop:4"
        "thunderbird.desktop:4"
        "transmission-gtk.desktop:3"
        "hakuneko-desktop.desktop:3"
        "userapp-transmission-gtk-Y6A461.desktop:3"
      ];
    };

    "org/gnome/shell/extensions/bedtime-mode" = {
      bedtime-mode-active = true;
      color-tone-factor = 80;
    };

    "org/gnome/shell/extensions/dash-to-panel" = {
      available-monitors = [ 0 ];
      primary-monitor = 0;
    };

    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
      switch-to-application-5 = [ ];
      switch-to-application-6 = [ ];
      switch-to-application-7 = [ ];
      switch-to-application-8 = [ ];
      switch-to-application-9 = [ ];
      toggle-message-tray = [ ];
      toggle-overview = [ ];
    };

    "org/gtk/gtk4/settings/file-chooser" = { sort-directories-first = true; };

    "com/github/stunkymonkey/nautilus-open-any-terminal" = {
      terminal = "foot";
    };

  };
}
