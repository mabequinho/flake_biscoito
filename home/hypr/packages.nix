{ config, pkgs, inputs, ... }: {

  home = {

    packages = with pkgs // pkgs.libsForQt5; [

      xdg-desktop-portal-hyprland

      polkit-kde-agent
      qt6.qtwayland
      qt5.qtwayland

      hyprpaper
      hyprpicker
      cliphist
      waylock

      portfolio-filemanager
      gnome.file-roller

      nur.repos.xddxdd.svp

      inputs.hyprland-contrib.packages.${pkgs.system}.grimblast
      inputs.hyprland-plugins.packages.${pkgs.system}.borders-plus-plus
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars

    ];
  };

  xdg.configFile = {

    "hypr/hyprpaper.conf".text = ''
   preload = ~/.config/hypr/wall.png
   wallpaper = ,~/.config/hypr/wall.png
       '';

    "hypr/wall.png".source = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/lm/wallhaven-lmkqqy.png";
      sha256 = "19bmcl3q1v4sjlaan0mkxrkjxks6nb609n1qpxdg0m87xlz1vg35";
    };

  };

}
