{ config, pkgs, ... }: {

  home.packages = with pkgs; [

    #menss
    profanity

    #utils
    nix-your-shell
    zbar
    detox

    #trocar pro sops-nix https://github.com/Mic92/sops-nix
    rage

    #media
    nur.repos.xddxdd.svp

    #menss
    telegram-desktop
    fluffychat

    #net
    transmission-gtk
    hakuneko

    #theming
    nerdfonts
    yaru-theme

  ];

}
