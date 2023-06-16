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
      vimAlias = true;
      vimdiffAlias = true;
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
        piousdeer.adwaita-theme
      ];
      userSettings = {
        "window.titleBarStyle" = "custom";
        "window.commandCenter" = "true";
        "window.autoDetectColorScheme" = "true";
        "workbench.preferredDarkColorTheme" = "Adwaita Dark";
        "workbench.preferredLightColorTheme" = "Adwaita Light";
        "workbench.productIconTheme" = "adwaita";
        "editor.renderLineHighlight" = "none";
        "workbench.iconTheme" = "null";
        "workbench.tree.indent" = 12;
	"workbench.colorTheme" = "Adwaita Light";
      };
    };
  };
}
