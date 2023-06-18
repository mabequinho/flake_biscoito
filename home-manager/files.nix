{ config, pkgs, ... }:

{

  home.file = {

    ".detoxrc".source = ./files/detoxrc;

    ".bashrc".source = ./files/bashrc;

    ".face" = {
      source = pkgs.fetchurl {
        url = "https://64.media.tumblr.com/586eabe1b301d5699908b46e0c52f87d/d96f7112505bc469-b3/s1280x1920/dd70b815538e199b493bf83457134083526b34f8.jpg";
        sha256 = "1ghz5cg8ydkgw1rai6y24v29mvf84vxza30ffkyakl56n2krx4qa";
      };
    };

    ".wall" = {
      source = pkgs.fetchurl {
        url = "https://w.wallhaven.cc/full/1j/wallhaven-1jlwv3.jpg";
        sha256 = "1qls8yfriiwiaxcsma2jf04a12in1sz382wklpw9val7k32wkfgn";
      };
    };

    ".local/share/applications/fish.desktop".source = ./files/hide.desktop;
    ".local/share/applications/cups.desktop".source = ./files/hide.desktop;
    ".local/share/applications/nvim.desktop".source = ./files/hide.desktop;

    #".local/share/VeroptBR3215AOC.oxt".source = pkgs.fetchurl {
    #  url =
    #    "https://pt-br.libreoffice.org/assets/Uploads/PT-BR-Documents/VERO/VeroptBR3215AOC.oxt";
    #  sha256 = "1vhh09867gcrkbdcnzd89zx7d60q2g32ybapifgnkmd0mbca6wbm";
    #};
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
  };

}
