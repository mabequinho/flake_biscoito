{ config, ... }: {

  programs.exa = {
    enable = true;
    enableAliases = true;
    extraOptions = [ "--long" "--group-directories-first" "--sort=modified" ];
    git = true;
    icons = true;
  };

}
