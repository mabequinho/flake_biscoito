{ config, pkgs, ... }:

{

  home.file = {

    ".detoxrc".source = ./files/detoxrc;

    ".bashrc".source = ./files/bashrc;

    ".face" = {
      source = pkgs.fetchurl {
        url = "https://openclipart.org/image/400px/322498";
        sha256 = "167ylcpnixy1ki1gqf1723ih6xhwnb9h9dbvkf3zdn6nq0cnjxsg";
      };
    };

    ".wall" = {
      source = pkgs.fetchurl {
        url = "https://w.wallhaven.cc/full/5d/wallhaven-5dvez1.png";
        sha256 = "01g1ynw8xhjjz024bv75x5q5spq91rl7lqcbnbc5zxpqm53w7vbx";
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
