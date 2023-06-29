{ config, pkgs, lib, inputs, ... }:

{

  home.file = {

    ".detoxrc".source = ./sources/detoxrc;

    ".bashrc".source = ./sources/bashrc;

    ".bash_profile".source = ./sources/bash_profile;

    ".face" = {
      source = pkgs.fetchurl {
        url =
          "https://64.media.tumblr.com/586eabe1b301d5699908b46e0c52f87d/d96f7112505bc469-b3/s1280x1920/dd70b815538e199b493bf83457134083526b34f8.jpg";
        sha256 = "1ghz5cg8ydkgw1rai6y24v29mvf84vxza30ffkyakl56n2krx4qa";
      };
    };

    cursors = {
      recursive = true;
      source = inputs.touhou-cursors;
      target = ".local/share/icons";
    };
    
    ".local/share/applications/fish.desktop".source = ./sources/hide.desktop;
    ".local/share/applications/cups.desktop".source = ./sources/hide.desktop;
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
    userDirs = {
      publicShare = "${config.home.homeDirectory}/.Public";
      templates = "${config.home.homeDirectory}/.Templates";
      desktop = "${config.home.homeDirectory}/.Desktop";
    };
  };
}
