{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    #menss
    profanity
    telegram-desktop
    fluffychat

    #net
    transmission-gtk
    yt-dlp
    hakuneko

    #gutils
    pika-backup
    easyeffects
    mate.atril
    tidal-hifi

    #utils
    screen
    nix-your-shell
    zbar
    wl-clipboard
    detox
    bottom
    radeontop
    ffmpeg_5-full
    playerctl
    zip
    rar
    p7zip
    rbw
    wget
    wgetpaste
    tree
    tcpdump
    rage

    #langs
    octaveFull
    nixfmt
    nil
    (python311.withPackages (ps: with ps; [ pandas ]))

    #misc
    disfetch

    #theming
    nerdfonts

  ];
}
