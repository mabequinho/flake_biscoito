{ config, pkgs, libs, ... }: {
  home.packages = with pkgs;
    [

      xdg-desktop-portal-hyprland
      qt6.qtwayland
      tofi
      hyprpaper
      glib
    ] ++ (with libsForQt5; [
      polkit-kde-agent
      qt5.qtwayland

    ]);
}
