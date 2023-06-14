{ config, pkgs, ... }: {

  programs = {
    git = {
      enable = true;
      userEmail = "lucio_a.khfzo@aleeas.com";
      userName = "Lucio";
    };
    alacritty = { enable = true; };
    neovim = { enable = true; };
  };
}
