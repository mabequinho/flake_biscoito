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
    ulauncher
    easyeffects
    mate.atril

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
    playerctl
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
    vlc
    disfetch
    rage

    #theming
    nerdfonts
    yaru-theme

  ];
}
