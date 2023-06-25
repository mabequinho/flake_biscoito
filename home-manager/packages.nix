{ config, pkgs, ... }: {
  home.packages = with pkgs; [
    #menss
    profanity
    discord
    telegram-desktop

    #net
    transmission-gtk
    yt-dlp
    hakuneko

    #gutils
    pika-backup
    ulauncher
    bottles
    easyeffects
    foliate

    #utils
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

    #langs
    octaveFull
    nixfmt
    nil
    (python311.withPackages (ps: with ps; [ pandas ]))

    #misc
    vlc
    disfetch
    rage
    nerdfonts
    yaru-theme

  ];
}
