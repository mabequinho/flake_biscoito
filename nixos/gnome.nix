{ config, pkgs, lib, ... }: {

  services = {
    xserver = {
      enable = true;
      displayManager = {
        autoLogin = {
          enable = true;
          user = "mabeco";
        };
        gdm = {
          enable = true;
          wayland = true;
          autoSuspend = true;
        };
      };
      desktopManager = {
        gnome = {
          enable = true;
          extraGSettingsOverridePackages = with pkgs;
            [ nautilus-open-any-terminal ];
        };
      };
    };
    gnome = {
      core-utilities.enable = false;
      gnome-keyring.enable = true;
      sushi.enable = true;
    };
    power-profiles-daemon.enable = lib.mkForce false ;
  };
  programs = {
    file-roller.enable = true;
    seahorse.enable = true;
  };
  services.udev.packages = with pkgs; [ gnome.gnome-settings-daemon ];
  environment = {
  sessionVariables = {
  NAUTILUS_4_EXTENSION_DIR = "${config.system.path}/lib/nautilus/extensions-4";
  pathsToLink = [
        "/share/nautilus-python/extensions"
      ];
   };
    systemPackages = with pkgs.gnome;
      [ nautilus nautilus-python ] ++ (with pkgs; [
        dconf2nix
        nautilus-open-any-terminal
        qt6.qtwayland
        libsForQt5.qt5.qtwayland
      ]) ++ (with pkgs.gnomeExtensions; [
        dash-to-panel
        gnome-bedtime
        disable-unredirect-fullscreen-windows
      ]);
    gnome.excludePackages = with pkgs; [ gnome-tour ];
  };
  #Jul - 2023 issue https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;
}
