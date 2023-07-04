{ config, pkgs, inputs, ... }: {

  imports =

    [

      ./hypr/hyprland.nix
      ./programs/programs.nix
      ./services/services.nix
      #     ./gnome-dconf.nix

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
    /* SF-Mono-Nerd-Font = {
          source = pkgs.fetchFromGitHub {
            owner = "epk";
            repo = "SF-Mono-Nerd-Font";
            rev = "a95ddff08857fd156d14d15b986a80ce3dd0f075";
            sha256 = "0i2wzyywbi7pjb49gjbrpi3av3hplkwd7brahi61flw26aykz43z";
          };
          target = ".local/share/fonts/otf/SF-Mono-Nerd-Font";
          recursive = true;
        };
    */
  };

  xdg = {

    desktopEntries = {

      "fish" = {
        name = "fish";
        noDisplay = true;
      };

      "xterm" = {
        name = "xterm";
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
