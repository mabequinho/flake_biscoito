{ config, ... }: {
  programs = {
    foot = {
      enable = true;
      settings = {
        main = {
          font = "MesloLGS Nerd Font Mono:size=8";
          term = "xterm-256color";
          pad = "6x6";
        };
        csd = {
          border-width = 4;
          size = 0;
        };
        # theme: Tempus Classic
        # author: Protesilaos Stavrou (https://protesilaos.com)
        # description: Dark theme with warm hues (WCAG AA compliant)
        colors = {
          background = "000000";
          foreground = "ffffff";
          regular0 = "000000";
          regular1 = "ff8059";
          regular2 = "44bc44";
          regular3 = "d0bc00";
          regular4 = "2fafff";
          regular5 = "feacd0";
          regular6 = "00d3d0";
          regular7 = "bfbfbf";
          bright0 = "595959";
          bright1 = "ef8b50";
          bright2 = "70b900";
          bright3 = "c0c530";
          bright4 = "79a8ff";
          bright5 = "b6a0ff";
          bright6 = "6ae4b9";
          bright7 = "ffffff";
          selection-foreground = "949d9f";
          selection-background = "312e30";
        };
      };
    };
  };
}
