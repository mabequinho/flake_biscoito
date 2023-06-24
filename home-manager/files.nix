{ config, pkgs, lib, ... }:

{

  home.file = {

    ".detoxrc".source = ./files/detoxrc;

    ".bashrc".source = ./files/bashrc;

    ".face" = {
      source = pkgs.fetchurl {
        url =
          "https://64.media.tumblr.com/586eabe1b301d5699908b46e0c52f87d/d96f7112505bc469-b3/s1280x1920/dd70b815538e199b493bf83457134083526b34f8.jpg";
        sha256 = "1ghz5cg8ydkgw1rai6y24v29mvf84vxza30ffkyakl56n2krx4qa";
      };
    };

    ".wall" = {
      source = pkgs.fetchurl {
        url =
          "https://raw.githubusercontent.com/mabequinho/flake_biscoito/main/home-manager/files/wall.png";
        sha256 = "0c3350l7ya8xxfs64whzbw3s1h6zjfpc0pgz8qhf3xwjjcbcbwvg";
      };
    };

    ".local/share/icons/Tewi" = {
      source = pkgs.fetchzip {
        url =
          "https://github.com/mabequinho/flake_biscoito/raw/main/home-manager/files/Tewi.zip";
        sha256 = "17pl69qc3r3m1m2rn3q1czcj1mrkzrszz8bj2r66rgbc8lr32vrh";
      };
    };

    ".local/share/blackbox/schemes/base16-grayscale-light.json".source =
      ./files/base16-grayscale-light.json;

    ".local/share/applications/fish.desktop".source = ./files/hide.desktop;
    ".local/share/applications/cups.desktop".source = ./files/hide.desktop;
    ".local/share/applications/nvim.desktop".source = ./files/hide.desktop;
  };
  systemd.user.tmpfiles.rules = [
    "D /tmp/mabeco-cache 0700 mabeco wheel 1w"
    "L+ %h/.cache - - - - /tmp/mabeco-cache"

    "D /tmp/mabeco-down 0700 mabeco wheel 1w"
    "L+ %h/Downloads - - - - /tmp/mabeco-down"

    "D /tmp/mabeco-scsh 0700 mabeco wheel 1w"
    "L+ %h/Pictures/Screenshots - - - - /tmp/mabeco-scsh"
  ];

  xdg = {
    mimeApps = {
      enable = true;
      defaultApplications = {
        "inode/directory" = [ "org.gnome.Nautilus.desktop" ];
      };
    };
    userDirs = {
      publicShare = "${config.home.homeDirectory}/.Public";
      templates = "${config.home.homeDirectory}/.Templates";
      desktop = "${config.home.homeDirectory}/.Desktop";
    };
  };
}
