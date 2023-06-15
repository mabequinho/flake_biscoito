{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    #menss
    profanity
    tiny
    mumble
    thunderbird

    #net
    firefox-bin
    aria
    yt-dlp
    mangal

    #viewer
    imv
    mupdf
    vlc

    #gutils
    pika-backup

    #utils
    zbar
    wl-clipboard
    detox
    bottom
    radeontop
    ffmpeg_5-full
    any-nix-shell
    playerctl
    zip
    rar
    p7zip
    rbw
    playerctl
    wget
    wgetpaste

    #langs
    octaveFull

    #misc
    tomb
    pinentry-gnome
    nerdfonts
    colloid-icon-theme
    disfetch

  ];
}
