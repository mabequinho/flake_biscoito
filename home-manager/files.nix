{ config, ... }:

{
  home.file = {

    ".detoxrc".source = ./config/detoxrc;

    ".bashrc".source = ./config/bashrc;

    ".face" = {
      source = pkgs.fetchurl {
        url = "https://nitter.net/pic/media%2FFN_lMoOVUAAnVUd.jpg";
        sha256 =
          "a476548d48768690f44fd8c67f0a566224112bc1003a3a9fa6b3edc18d8bc14e";
      };
    };

    # ".local/share/applications/fish.desktop".source = ./config/hide.desktop;

    # ".local/share/applications/cups.desktop".source = ./config/hide.desktop;

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
