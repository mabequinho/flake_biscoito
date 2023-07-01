{ config, pkgs, libs, ... }: {
  programs = {
    mpv = {
      enable = true;
      scripts = with pkgs.mpvScripts; [
        webtorrent-mpv-hook
        thumbfast
        sponsorblock
        mpris
        autocrop
      ];
    };
  };
}
