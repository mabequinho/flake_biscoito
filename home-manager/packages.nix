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


    #utils
    distrobox
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

    #langs
    octaveFull
    nil
    nixfmt
    nodePackages.bash-language-server
    texlab
    (python311.withPackages (ps:
      with ps; [
        python-lsp-server
        yapf
        rope
        pycodestyle
        pyflakes
        mccabe
        ipykernel
        pip
      ]))

    #misc
    tomb
    pinentry-gnome
    nerdfonts
    disfetch

  ];
}
