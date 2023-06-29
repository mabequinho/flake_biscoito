{ config, pkgs, inputs, ... }: {
  home = {
    packages = with pkgs;
      [
        xdg-desktop-portal-hyprland
        qt6.qtwayland
        tofi
        hyprpaper
        physlock
        portfolio-filemanager
        gnome.file-roller
      ] ++ (with libsForQt5; [ polkit-kde-agent qt5.qtwayland ])
      ++ [ inputs.hyprland-contrib.packages.${pkgs.system}.grimblast ];
  };
  xdg.configFile = {
    "tofi/config".source = ./sources/tofi-soy-milk;
    "hypr/hyprpaper.conf".source = ./sources/hyprpaper.conf;
    "hypr/wall.png".source = pkgs.fetchurl {
      url =
        "https://raw.githubusercontent.com/mabequinho/flake_biscoito/main/wall.png";
      sha256 = "17g0pxaschiwdhcrbhkr71bcwmyb59bsnaaksi68zxyn25fr4vr1";
    };
  };
}
