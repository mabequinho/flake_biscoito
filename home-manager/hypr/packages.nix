{ config, pkgs, inputs, ... }: {
  home = {
    packages = with pkgs;
      [
        xdg-desktop-portal-hyprland
        qt6.qtwayland
        tofi
        hyprpaper
	portfolio-filemanager
	gnome.file-roller
      ] ++ (with libsForQt5; [ polkit-kde-agent qt5.qtwayland ]) ++ [inputs.hyprland-contrib.packages.${pkgs.system}.grimblast];
  };
  xdg.configFile = {
    "tofi/config".source = ./sources/tofi-soy-milk;
    "hypr/hyprpaper.conf".source = ./sources/hyprpaper.conf;
    "hypr/wall.jpg".source = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/1k/wallhaven-1k3ej9.jpg";
      sha256 = "0m2pkq36i2fdnw8q788cn8r5rnd7ymx45jx5xafry96rb2wj75v1";
    };
  };
}
