{ config, pkgs, ... }: {
  programs = {
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
      userSettings = {
        "editor.fontFamily" = "Mononoki Nerd Font Mono";
        "editor.lineHeight" = 24;
        "editor.fontLigatures" = true;
        "explorer.decorations.badges" = false;
        "workbench.colorTheme" = "Quiet Light";
        "window.menuBarVisibility" = "toggle";
        "nix.enableLanguageServer" = true;
        "nix.serverPath" = "nil";
        "nix.serverSettings" = {
          nil = {
            diagnostics = { ignored = [ "unused_binding" "unused_with" ]; };
            formatting = { command = [ "nixfmt" ]; };
          };
        };
      };
    };
  };
}
