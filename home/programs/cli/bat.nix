{ config, pkgs, ... }: {

  programs.bat = {
    enable = true;
    #settings = {};
    extraPackages = with pkgs.bat-extras; [ prettybat batwatch batpipe batman batgrep batdiff ];
    #themes = {};
  };

}
