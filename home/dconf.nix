# Generated via dconf2nix: https://github.com/gvolpe/dconf2nix
{ lib, ... }:

with lib.hm.gvariant;

{
  dconf.settings = {

    "org/gnome/desktop/input-sources" = {
      per-window = true;
      sources = [ (mkTuple [ "xkb" "us" ]) (mkTuple [ "xkb" "us+intl" ]) ];
      xkb-options = [ "terminate:ctrl_alt_bksp" ];
    };

    "org/gnome/desktop/interface" = {
      clock-show-weekday = true;
      cursor-theme = "Sanae";
      document-font-name = "SF Pro Text Light 11";
      enable-hot-corners = true;
      font-antialiasing = "grayscale";
      font-hinting = "slight";
      font-name = "SF Pro Display Light 11";
      gtk-theme = "adw-gtk3";
      icon-theme = "Tela-circle";
      monospace-font-name = "Liga SFMono Nerd Font Medium 10";
      toolkit-accessibility = false;
    };

    "org/gnome/desktop/peripherals/trackball" = {
      scroll-wheel-emulation-button = 8;
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
      raise-or-lower = [ ];
      switch-to-workspace-1 = [ "<Super>1" ];
      switch-to-workspace-2 = [ "<Super>2" ];
      switch-to-workspace-3 = [ "<Super>3" ];
      switch-to-workspace-4 = [ "<Super>4" ];
    };

    "org/gnome/desktop/wm/preferences" = {
      auto-raise = true;
      button-layout = "close:appmenu";
      focus-mode = "sloppy";
      titlebar-font = "SF Pro Display 11";
    };

    "org/gnome/mutter" = {
      attach-modal-dialogs = true;
      edge-tiling = true;
    };

    "org/gnome/mutter/keybindings" = {
      toggle-tiled-left = [ "<Super>h" ];
      toggle-tiled-right = [ "<Super>l" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys" = {
      custom-keybindings = [
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom1/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom2/"
        "/org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3/"
      ];
      email = [ "<Super>m" ];
      home = [ "<Super>f" ];
      magnifier-zoom-in = [ ];
      magnifier-zoom-out = [ ];
      mic-mute = [ "<Alt><Super>BackSpace" ];
      play = [ "<Super>backslash" ];
      screensaver = [ "<Super>x" ];
      stop = [ ];
      volume-down = [ "<Super>minus" ];
      volume-mute = [ "<Super>BackSpace" ];
      volume-up = [ "<Super>equal" ];
      www = [ "<Super>b" ];
    };

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom0" =
      {
        binding = "<Super>Return";
        command = "gnome-terminal";
        name = "term";
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

    "org/gnome/settings-daemon/plugins/media-keys/custom-keybindings/custom3" =
      {
        binding = "<Super>c";
        command = "code";
        name = "code";
      };

    "org/gnome/shell" = {
      disabled-extensions = [ ];
      enabled-extensions = [
        "dock-from-dash@fthx"
        "gnomebedtime@ionutbortis.gmail.com"
        "unredirect@vaina.lt"
        "auto-move-windows@gnome-shell-extensions.gcampax.github.com"
        "user-theme@gnome-shell-extensions.gcampax.github.com"
	"hidetopbar@mathieu.bidon.ca"
      ];
      favorite-apps =
        [ "org.gnome.Nautilus.desktop" "org.gnome.Terminal.desktop" ];
      welcome-dialog-last-shown-version = "44.3";
    };

    "org/gnome/shell/app-switcher" = { current-workspace-only = true; };

    "org/gnome/shell/extensions/auto-move-windows" = {
      application-list = [
        "thunderbird.desktop:4"
        "re.sonny.Tangram.desktop:4"
        "transmission-gtk.desktop:1"
        "org.gnome.Pomodoro.desktop:4"
      ];
    };

    "org/gnome/shell/extensions/bedtime-mode" = {
      bedtime-mode-active = true;
      color-tone-factor = 90;
      ondemand-button-location = "menu";
    };

    "org/gnome/shell/extensions/hidetopbar" = {
      enable-active-window = true;
      mouse-sensitive = true;
    };

    "org/gnome/shell/extensions/user-theme" = {
      name = "Flat-Remix-Grey-Light-fullPanel";
    };

    "org/gnome/shell/keybindings" = {
      switch-to-application-1 = [ ];
      switch-to-application-2 = [ ];
      switch-to-application-3 = [ ];
      switch-to-application-4 = [ ];
      toggle-message-tray = [ ];
    };

    "org/gnome/terminal/legacy/profiles:/:b1dcc9dd-5262-4d8d-a863-c897e6d979b9" =
      {
        background-color = "rgb(0,0,0)";
        foreground-color = "rgb(170,170,170)";
        use-theme-colors = false;
      };

    "org/gnome/tweaks" = { show-extensions-notice = false; };

  };
}
