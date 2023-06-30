{ config, pkgs, libs, ... }: {
  imports = [ ./sources/programs/waybar.nix ];
  programs = {
    obs-studio = { enable = true; };
    mpv = { enable = true; };
    imv = { enable = true; };
    foot = {
      enable = true;
      settings = {
        main = {
          font = "Mononoki Nerd Font Mono:size=8";
          term = "xterm-256color";
          pad = "6x6";
        };
        # theme: Tempus Classic
        # author: Protesilaos Stavrou (https://protesilaos.com)
        # description: Dark theme with warm hues (WCAG AA compliant)
        colors = {
          background = "fbf7f0";
          foreground = "000000";
          regular0 = "000000";
          regular1 = "a60000";
          regular2 = "005e00";
          regular3 = "813e00";
          regular4 = "0031a9";
          regular5 = "721045";
          regular6 = "00538b";
          regular7 = "bfbfbf";
          bright0 = "595959";
          bright1 = "972500";
          bright2 = "315b00";
          bright3 = "70480f";
          bright4 = "2544bb";
          bright5 = "5317ac";
          bright6 = "005a5f";
          bright7 = "ffffff";
          selection-foreground = "949d9f";
          selection-background = "312e30";
        };
      };
    };
    swaylock.enable = true;
  };
}
