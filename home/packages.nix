{ config, pkgs, ... }: {
  imports = [./packages/lang.nix ];
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
    mate.atril

    #utils
    handlr-regex
    screen
    nix-your-shell
    zbar
    wl-clipboard
    detox
    radeontop
    nmon
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

    #misc
    disfetch

    #theming
    nerdfonts

  ];
}
