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
      extraLuaConfig = "";
      withPython3 = true;
      extraPackages = with pkgs; [ nil nixfmt ];
      extraPython3Packages =
        (python311Packages: with python311Packages; [ python-lsp-server ]);
      plugins = with pkgs.vimPlugins; [];
    };
  };
}
