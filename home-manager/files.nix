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

    ".local/share/applications/fish.desktop".source = ./files/hide.desktop;

    ".local/share/applications/cups.desktop".source = ./files/hide.desktop;

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

}
