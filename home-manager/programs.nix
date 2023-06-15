{ config, pkgs, ... }: {

  programs = {
    git = {
      enable = true;
      userEmail = "lucio_a.khfzo@aleeas.com";
      userName = "Lucio";
    };
    neovim = {
      enable = true;
      defaultEditor = true;
      viAlias = true;
      vimdiffAlias = true;
      plugins = with pkgs.vimPlugins; [ 
      	nvim-treesitter.withAllGrammars
      ];
    };
  };
}
