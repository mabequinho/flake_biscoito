{ config, pkgs, inputs, ... }: {

  imports =

    [

      #./hypr/hyprland.nix
      ./programs/programs.nix
      ./services/services.nix

    ];

  home.file = {

    ".detoxrc".source = ./sources/detoxrc;
    ".bashrc".source = ./sources/bashrc;

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

    SFMono-Nerd-Font-Ligaturized = {
      source = pkgs.fetchFromGitHub {
        owner = "shaunsingh";
        repo = "SFMono-Nerd-Font-Ligaturized";
        rev = "dc5a3e6fcc2e16ad476b7be3c3c17c2273b260ea";
        sha256 = "0v0zsmlvfd8w1473c51426swjrjy62z8z0nybibc4jn8aanwm201";
      };
      target = ".local/share/fonts/otf/SFMono-Nerd-Font-Ligaturized";
      recursive = true;
    };

    San-Francisco-Pro-Fonts = {
      source = pkgs.fetchFromGitHub {
        owner = "sahibjotsaggu";
        repo = "San-Francisco-Pro-Fonts";
        rev = "8bfea09aa6f1139479f80358b2e1e5c6dc991a58";
        sha256 = "0zm9112y5x6z36mhcqlga4lmiqjhp1n7qiszmd3h3wi77z3c81cq";
      };
      target = ".local/share/fonts/otf/San-Francisco-Pro-Fonts";
      recursive = true;
    };

  };

  xdg = {
    desktopEntries = {
      "fish" = {
        name = "fish";
        noDisplay = true;
      };
      "jupyter-nbclassic" = {
        name = "jupyter-nbclassic";
        noDisplay = true;
      };
      "ssh-add.desktop" = {
        name = "ssh-add";
        exec = "ssh-add -q .ssh/mabeco_ed25519";
        categories = [ "Application" ];
        noDisplay = true;
      };
    };

    userDirs = {
      publicShare = "${config.home.homeDirectory}/.Public";
      templates = "${config.home.homeDirectory}/.Templates";
      desktop = "${config.home.homeDirectory}/.Desktop";
    };
  };

}
