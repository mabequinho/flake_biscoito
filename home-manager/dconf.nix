# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {
    "apps/seahorse/listing" = {
      keyrings-selected = [ "openssh:///home/mabeco/.ssh" ];
    };

    "apps/seahorse/windows/key-manager" = {
      height = 476;
      width = 600;
    };

    "com/raggesilver/BlackBox" = {
      command-as-login-shell = false;
      fill-tabs = true;
      font = "Source Code Pro 10";
      headerbar-draw-line-single-tab = false;
      remember-window-size = true;
      show-headerbar = true;
      show-menu-button = false;
      style-preference = mkUint32 0;
      theme-light = "Dracula Light";
      window-show-borders = true;
    };

    "org/freedesktop/ibus/engine/typing-booster" = {
      autocapitalize = true;
      autocommitcharacters = ".,;:?!/[]{}=+-_)(";
      autoselectcandidate = 1;
      dictionary = "en_US";
      dictionaryinstalltimestamp = "2023-06-17 21:10:34";
      disableinterminals = true;
      inputmethod = "NoIME";
    };

    "org/gnome/desktop/a11y/magnifier" = { mag-factor = 5.0; };

    "org/gnome/desktop/app-folders" = {
      folder-children = [
        "Utilities"
        "502da463-a171-48bf-a485-b27e6ef744e1"
        "bf60595e-f9f5-4bee-aa76-18c109f1caaa"
        "421bec7f-e535-4e61-bd60-3f1f22d6ab51"
        "aac2832b-c83a-490c-97f7-9071a4548ce3"
      ];
    };

    "org/gnome/desktop/app-folders/folders/421bec7f-e535-4e61-bd60-3f1f22d6ab51" =
      {
        apps = [ "vlc.desktop" "mupdf.desktop" ];
        name = "Viewer";
        translate = false;
      };

    "org/gnome/desktop/app-folders/folders/502da463-a171-48bf-a485-b27e6ef744e1" =
      {
        apps = [
          "firefox.desktop"
          "thunderbird.desktop"
          "info.mumble.Mumble.desktop"
          "hakuneko-desktop.desktop"
        ];
        name = "Internet";
      };

    "org/gnome/desktop/app-folders/folders/Utilities" = {
      apps = [
        "org.gnome.seahorse.Application.desktop"
        "org.gnome.tweaks.desktop"
        "org.gnome.Settings.desktop"
        "org.gnome.Extensions.desktop"
        "nixos-manual.desktop"
      ];
      categories = [ "X-GNOME-Utilities" ];
      excluded-apps = [ "org.gnome.FileRoller.desktop" ];
      name = "X-GNOME-Utilities.directory";
      translate = true;
    };

    "org/gnome/desktop/app-folders/folders/aac2832b-c83a-490c-97f7-9071a4548ce3" =
      {
        apps = [
          "org.gnome.Nautilus.desktop"
          "org.gnome.FileRoller.desktop"
          "org.gnome.Pomodoro.desktop"
          "org.gnome.World.PikaBackup.desktop"
          "emoji-picker.desktop"
        ];
        name = "Accessories";
      };

    "org/gnome/desktop/app-folders/folders/bf60595e-f9f5-4bee-aa76-18c109f1caaa" =
      {
        apps = [
          "codium.desktop"
          "org.octave.Octave.desktop"
          "com.usebottles.bottles.desktop"
          "virt-manager.desktop"
        ];
        name = "Dev";
        translate = false;
      };

    "org/gnome/desktop/background" = {
      color-shading-type = "solid";
      picture-options = "zoom";
      picture-uri =
        "file:///home/mabeco/.local/share/backgrounds/2023-06-17-23-01-46-.wall";
      picture-uri-dark =
        "file:///home/mabeco/.local/share/backgrounds/2023-06-17-23-01-46-.wall";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/input-sources" = {
      mru-sources =
        [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "ibus" "typing-booster" ]) ];
      sources =
        [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "ibus" "typing-booster" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      color-scheme = "default";
      document-font-name = "Liberation Sans 11";
      enable-animations = true;
      enable-hot-corners = true;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "Liberation Sans 11";
      icon-theme = "Colloid-light";
      monospace-font-name = "Source Code Pro 10";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/notifications" = {
      application-children = [
        "thunderbird"
        "firefox"
        "org-gnome-pomodoro"
        "org-gnome-world-pikabackup"
        "org-gnome-settings"
      ];
      show-banners = true;
      show-in-lock-screen = false;
    };

    "org/gnome/desktop/notifications/application/codium" = {
      application-id = "codium.desktop";
    };

    "org/gnome/desktop/notifications/application/firefox" = {
      application-id = "firefox.desktop";
    };

    "org/gnome/desktop/notifications/application/gnome-power-panel" = {
      application-id = "gnome-power-panel.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-nautilus" = {
      application-id = "org.gnome.Nautilus.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-pomodoro" = {
      application-id = "org.gnome.Pomodoro.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-settings" = {
      application-id = "org.gnome.Settings.desktop";
    };

    "org/gnome/desktop/notifications/application/org-gnome-world-pikabackup" = {
      application-id = "org.gnome.World.PikaBackup.desktop";
    };

    "org/gnome/desktop/notifications/application/thunderbird" = {
      application-id = "thunderbird.desktop";
    };

    "org/gnome/desktop/peripherals/touchpad" = {
      two-finger-scrolling-enabled = true;
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

    "org/gnome/desktop/screensaver" = {
      color-shading-type = "solid";
      lock-delay = mkUint32 300;
      picture-options = "zoom";
      picture-uri =
        "file:///home/mabeco/.local/share/backgrounds/2023-06-17-23-01-46-.wall";
      primary-color = "#000000000000";
      secondary-color = "#000000000000";
    };

    "org/gnome/desktop/search-providers" = {
      sort-order = [
        "org.gnome.Contacts.desktop"
        "org.gnome.Documents.desktop"
        "org.gnome.Nautilus.desktop"
      ];
    };

    "org/gnome/desktop/session" = { idle-delay = mkUint32 720; };

    "org/gnome/desktop/sound" = {
      event-sounds = true;
      theme-name = "__custom";
    };

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
      auto-raise = true;
      focus-mode = "sloppy";
    };

    "org/gnome/evolution-data-server" = { migrated = true; };

    "org/gnome/mutter" = {
      center-new-windows = true;
      edge-tiling = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Super>h" ];
      toggle-tiled-right = [ "<Super>l" ];
    };

    "org/gnome/nautilus/preferences" = {
      default-folder-viewer = "list-view";
      migrated-gtk-settings = true;
      search-filter-time-type = "last_modified";
      search-view = "list-view";
    };

    "org/gnome/nautilus/window-state" = { initial-size = mkTuple [ 890 550 ]; };

    "org/gnome/pomodoro/plugins/actions" = {
      actions-list = [ "/org/gnome/pomodoro/plugins/actions/action0/" ];
    };

    "org/gnome/pomodoro/plugins/actions/action0" = {
      command = "playerctl pause";
      name = "pause media";
      states = [ "short-break" "long-break" ];
      triggers = [ "start" ];
    };

    "org/gnome/pomodoro/plugins/gnome" = { hide-system-notifications = true; };

    "org/gnome/pomodoro/preferences" = {
      enabled-plugins = [ "notifications" "actions" "dark-theme" ];
      long-break-duration = 1200.0;
      pomodoro-duration = 2400.0;
      short-break-duration = 600.0;
    };

    "org/gnome/pomodoro/state" = {
      timer-date = "2023-06-18T18:36:55+0000";
      timer-elapsed = 0.0;
      timer-paused = false;
      timer-score = 0.0;
      timer-state = "null";
      timer-state-date = "2023-06-18T18:36:55+0000";
      timer-state-duration = 0.0;
    };

    "org/gnome/settings-daemon/plugins/color" = {
      night-light-enabled = false;
      night-light-schedule-automatic = false;
      night-light-schedule-from = 3.983333;
      night-light-schedule-to = 3.966667;
      night-light-temperature = mkUint32 3700;
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4/"
      ];
      email = [ "<Super>m" ];
      home = [ "<Super>f" ];
      logout = [ "<Super>x" ];
      magnifier-zoom-in = [ ];
      magnifier-zoom-out = [ ];
      mic-mute = [ "<Alt><Super>BackSpace" ];
      next = [ "<Super>bracketright" ];
      play = [ "<Super>backslash" ];
      previous = [ "<Super>bracketleft" ];
      screensaver = [ ];
      stop = [ ];
      volume-down = [ "<Super>minus" ];
      volume-mute = [ "<Super>BackSpace" ];
      volume-up = [ "<Super>equal" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" =
      {
        binding = "<Alt><Super>minus";
        command = "ddcutil setvcp 10 - 20";
        name = "backlight down";
      };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1" =
      {
        binding = "<Super>Return";
        command = "blackbox";
        name = "terminal";
      };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2" =
      {
        binding = "<Alt><Super>equal";
        command = "ddcutil setvcp 10 + 20";
        name = "backlight up";
      };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" =
      {
        binding = "<Super>c";
        command = "codium";
        name = "code";
      };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom4" =
      {
        binding = "<Super>a";
        command = "ulauncher-toggle";
        name = "ulauncher";
      };

    "org/gnome/settings-daemon/plugins/power" = {
      sleep-inactive-ac-timeout = 1200;
    };

    "org/gnome/shell" = {
      app-picker-layout =
        "[{'aac2832b-c83a-490c-97f7-9071a4548ce3': <{'position': <0>}>, 'bf60595e-f9f5-4bee-aa76-18c109f1caaa': <{'position': <1>}>, '502da463-a171-48bf-a485-b27e6ef744e1': <{'position': <2>}>, '421bec7f-e535-4e61-bd60-3f1f22d6ab51': <{'position': <3>}>, 'Utilities': <{'position': <4>}>}]";
      command-history = [ "gnome-terminal" ];
      disabled-extensions = [ "space-bar@luchrioh" ];
      enabled-extensions = [
        "auto-move-windows@gnome-shell-extensions.gcampax.github.com"
        "espresso@coadmunkee.github.com"
        "hidetopbar@mathieu.bidon.ca"
        "pomodoro@arun.codito.in"
        "Hide_Activities@shay.shayel.org"
      ];
      favorite-apps = [ "com.raggesilver.BlackBox.desktop" ];
      welcome-dialog-last-shown-version = "44.2";
    };

    "org/gnome/shell/app-switcher" = { current-workspace-only = true; };

    "org/gnome/shell/extensions/auto-move-windows" = {
      application-list =
        [ "org.gnome.Pomodoro.desktop:4" "thunderbird.desktop:4" ];
    };

    "org/gnome/shell/extensions/espresso" = {
      has-battery = false;
      show-notifications = false;
      user-enabled = false;
    };

    "org/gnome/shell/extensions/hidetopbar" = {
      enable-active-window = false;
      enable-intellihide = false;
      mouse-sensitive = true;
      pressure-threshold = 200;
    };

    "org/gnome/shell/extensions/pop-shell" = {
      smart-gaps = false;
      tile-by-default = false;
    };

    "org/gnome/shell/extensions/space-bar/behavior" = {
      smart-workspace-names = false;
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
      toggle-application-view = [ ];
      toggle-message-tray = [ ];
    };

    "org/gnome/tweaks" = { show-extensions-notice = false; };

    "org/gtk/gtk4/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 140;
      sort-column = "name";
      sort-directories-first = true;
      sort-order = "ascending";
      type-format = "category";
      view-type = "list";
      window-size = mkTuple [ 1005 651 ];
    };

    "org/gtk/settings/file-chooser" = {
      date-format = "regular";
      location-mode = "path-bar";
      show-hidden = true;
      show-size-column = true;
      show-type-column = true;
      sidebar-width = 155;
      sort-column = "name";
      sort-directories-first = false;
      sort-order = "ascending";
      type-format = "category";
      window-position = mkTuple [ 26 23 ];
      window-size = mkTuple [ 1231 902 ];
    };

    "org/virt-manager/virt-manager" = {
      manager-window-height = 550;
      manager-window-width = 550;
    };

    "org/virt-manager/virt-manager/confirm" = { unapplied-dev = true; };

    "org/virt-manager/virt-manager/connections" = {
      autoconnect = [ "qemu:///system" ];
      uris = [ "qemu:///system" ];
    };

    "org/virt-manager/virt-manager/details" = { show-toolbar = true; };

    "org/virt-manager/virt-manager/new-vm" = {
      cpu-default = "host-passthrough";
      firmware = "uefi";
      graphics-type = "system";
    };

    "org/virt-manager/virt-manager/paths" = {
      media-default = "/home/mabeco/Documents/isos";
    };

    "org/virt-manager/virt-manager/urls" = {
      isos =
        [ "/home/mabeco/Documents/isos/ubuntu-22.04.2-live-server-amd64.iso" ];
    };

    "org/virt-manager/virt-manager/vmlist-fields" = {
      disk-usage = false;
      network-traffic = false;
    };

    "org/virt-manager/virt-manager/vms/4a3373ad3af8417c8bb77a02c2d216d1" = {
      autoconnect = 1;
      scaling = 1;
      vm-window-size = mkTuple [ 1280 1043 ];
    };

    "system/locale" = { region = "pt_BR.UTF-8"; };

  };
}
