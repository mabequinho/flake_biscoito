{ config, pkgs, ... }: {

  home.packages = with pkgs; [

    #utils
    nix-your-shell
    zbar
    detox
    selectdefaultapplication
    wgetpaste
    radeontop
    #system-config-printer
    trashy

    #misc

    #trocar pro sops-nix https://github.com/Mic92/sops-nix
    rage

    #media
    nur.repos.xddxdd.svp
    playerctl

    #menss
    telegram-desktop
    discord

    #net
    transmission-gtk
    #hakuneko
    stremio
    brave

    #theming
    nerdfonts
    yaru-theme

  ];

}
