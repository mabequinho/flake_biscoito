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
    "hypr/wall.jpg".source = pkgs.fetchurl {
      url = "https://w.wallhaven.cc/full/we/wallhaven-we6v6r.jpg";
      sha256 = "0spnwq2mwfg4xrv288q6l15bbcm4zkd6bldfbmy496kvvc1drqac";
    };
    "ulauncher/user-themes/libadwaita/" = {
      source = pkgs.fetchFromGitHub {
        owner = "leodr";
        repo = "ulauncher-theme-libadwaita";
        rev = "f4eaeae9406219453a2fa491114ce48f9c86debf";
        sha256 = "0950bfsvjw9a30m56b8gf3yfi63gla3b68a9nb4swxyanr4b622k";
      };
    };
  };
}
