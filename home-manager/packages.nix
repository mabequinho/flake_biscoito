{ pkgs, ... }:
with pkgs;

rec {

  comm = [ profanity tiny mumble thunderbird ];

  internet = [ aria yt-dlp mangal ];

  viewer = [ mupdf vlc ];

  gutils = [ albert ];

  utils = [
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
  ];

  languages = [
    nil
    nixfmt
    nodePackages.bash-language-server
    texlab
    (python312.withPackages (ps:
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
  ];

  bury = [ tomb pinentry-gnome ];

  misc = [ nerdfonts disfetch steam-run ];

  gnome = with pkgs.gnome;
    [
      gnome-terminal
      gnome-boxes
      gnome-tweaks
      file-roller
      seahorse
      nautilus
      eog
      pomodoro
    ] ++ [ dconf2nix ] ++ (with pkgs.gnomeExtensions; [



    ]);

  g_extensions = with pkgs.gnomeExtensions; [
    espresso
    no-activities-button
    gnome-bedtime
    disable-unredirect-fullscreen-windows
    xremap
    no-overview
  ];


  base = utils ++ gutils ++ viewers ++ editor ++ organization ++ bury
    ++ documents;
  # manipulation = mediaed;
  connect = web
    # ++ social
  ;
  looks = theming;

}