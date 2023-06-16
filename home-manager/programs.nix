{ config, pkgs, ... }: {

  programs = {
    git = {
      enable = true;
      userEmail = "lucio_a.khfzo@aleeas.com";
      userName = "Lucio";
    };
    vscode = {
      enable = true;
      enableExtensionUpdateCheck = false;
      enableUpdateCheck = false;
      package = pkgs.vscodium;
      extensions = with pkgs.vscode-extensions; [
        asvetliakov.vscode-neovim
        ms-python.python
        ms-toolsai.jupyter
        jnoortheen.nix-ide
      ];
    };
  };
}
