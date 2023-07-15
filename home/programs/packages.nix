{ config, pkgs, ... }: {

  home.packages = with pkgs; [

    #utils
    nix-your-shell
    zbar
    detox
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
    qbittorrent
    #hakuneko
    stremio
    brave

    #theming
    nerdfonts

  ];

}
