{ config, pkgs, inputs, ... }: {
  home = {
    packages = with pkgs;
      [
        xdg-desktop-portal-hyprland
        qt6.qtwayland
        ulauncher
        hyprpaper
        hyprpicker
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
    "ulauncher/user-themes/libadwaita" = {
      source = pkgs.fetchFromGitHub {
        owner = "leodr";
        repo = "ulauncher-theme-libadwaita";
        rev = "f4eaeae9406219453a2fa491114ce48f9c86debf";
        sha256 = "0950bfsvjw9a30m56b8gf3yfi63gla3b68a9nb4swxyanr4b622k";
      };
    };
  };
}
