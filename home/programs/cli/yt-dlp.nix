{ config, ... }: {

  programs.yt-dlp = {
    enable = true;
    extraConfig = ''
      -f mp4
      -o "%(title)s.%(ext)s" 
      --restrict-filenames
    '';
    settings = { };

  };

}
