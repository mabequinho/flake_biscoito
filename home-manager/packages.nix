{pkgs, ...}: with pkgs;
rec {

  chat = [ profanity tiny mumble thunderbird ];

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

  langs = [
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

  misc = [ tomb pinentry-gnome nerdfonts disfetch steam-run ];

  gnome = (with pkgs.gnome;
    [
      gnome-terminal
      gnome-boxes
      gnome-tweaks
      gnome-shell-extensions
      file-roller
      seahorse
      nautilus
      eog
      pomodoro
    ]) ++ [ dconf2nix ]
    ++ (with pkgs.gnomeExtensions; [ dash-to-panel espresso blur-my-shell ]);

  web = chat ++ internet;
  graphical = gnome ++ gutils ++ viewer;
  extra = utils ++ langs ++ misc;

}