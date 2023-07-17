{ config, pkgs, ... }: {

  home.packages = with pkgs; [

    vscode-fhs

    #utils
    nix-your-shell
    zbar
    detox
    wgetpaste
    radeontop
    #system-config-printer
    trashy

    #misc
    pika-backup
    mangal
    disfetch

    #trocar pro sops-nix https://github.com/Mic92/sops-nix
    rage

    #media
    nur.repos.xddxdd.svp
    playerctl
    headset
    #menss
    telegram-desktop
    discord

    #net
    transmission-gtk
    stremio

    #theming
    nerdfonts

  ];

}
