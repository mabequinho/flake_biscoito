{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    #menss
    profanity
    tiny
    mumble
    thunderbird

    #net
    aria
    yt-dlp
    hakuneko

    #viewer
    imv
    mupdf
    vlc
    amberol

    #gutils
    pika-backup
    ulauncher
    bottles

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
    tree
    tcpdump

    #langs
    octaveFull
    nixfmt
    nil
    (python311.withPackages (ps: with ps; [ pandas ]))

    #misc
    rage
    tomb
    pinentry-gnome
    nerdfonts
    colloid-icon-theme
    disfetch

  ];
}
