{ config, pkgs, ... }: with pkgs; rec{

  menss = [ 
    profanity 
    tiny 
    mumble 
    thunderbird 
    ];

  net = [ aria yt-dlp mangal ];

  viewer = [ mupdf vlc ];

  gutils = [ albert ];



  misc = [ tomb pinentry-gnome nerdfonts disfetch steam-run ];

  gnome = with pkgs.gnome;
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
    ];
    #++ [ dconf2nix ]
    #++ (with pkgs.gnomeExtensions; [ dash-to-panel espresso blur-my-shell ]);

  web = menss ++ net;
  graphical = gnome ++ gutils ++ viewer;
  extra = utils ++ langs ++ misc;
  home.packages = with pkgs; web ++ graphical ++ extra;
}