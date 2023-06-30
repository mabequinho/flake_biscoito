{ config, pkgs, inputs, ... }: {
  imports = [
    ./sources/tofi.nix
  ];
  home = {
    packages = with pkgs;
      [
        xdg-desktop-portal-hyprland
        qt6.qtwayland
        hyprpaper
        hyprpicker
        onagre
        waylock
        portfolio-filemanager
        gnome.file-roller
      ] ++ (with libsForQt5; [ polkit-kde-agent qt5.qtwayland ])
      ++ [ inputs.hyprland-contrib.packages.${pkgs.system}.grimblast ];
  };
  xdg.configFile = {
    "hypr/hyprpaper.conf".source = ./sources/hyprpaper.conf;
    "hypr/wall.png".source = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/lm/wallhaven-lmkqqy.png";
      sha256 = "19bmcl3q1v4sjlaan0mkxrkjxks6nb609n1qpxdg0m87xlz1vg35";
    };
  };
}
