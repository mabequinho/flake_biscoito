{config, ...}:{

  programs.exa = {
    enable = true;
    enableAliases = true;
    extraOptions = [
      "--long"
      "--grid"
      "--group-directories-first"
    ];
    git = true;
    icons = true;
  };

}
