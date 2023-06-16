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

    #gutils
    pika-backup
    ulauncher

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

    #langs
    octaveFull
    nixfmt
    nil
    (python311.withPackages (ps: with ps; [ pandas ]))

    #misc
    tomb
    pinentry-gnome
    nerdfonts
    colloid-icon-theme
    disfetch

  ];
}
