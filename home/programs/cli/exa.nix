{ config, ... }: {

  programs.exa = {
    enable = true;
    enableAliases = true;
    extraOptions = [ "--long" "--group-directories-first" ];
    git = true;
    icons = true;
  };

}
