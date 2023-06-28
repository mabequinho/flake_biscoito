{ config, pkgs, ... }: {

  home.file = {

    ".emacs.d/init.el".text = ''
     ;;modus-themes https://protesilaos.com/emacs/modus-themes
     (require 'modus-themes)
     (load-theme 'modus-vivendi :no-confirm)
     ;; Enable Evil
     (require 'evil)
     (evil-mode 1)
    '';

  };
  programs = {
    emacs = {
      enable = true;
      package = pkgs.emacs-nox;
      extraConfig = "";
      extraPackages = epkgs: with epkgs; [ modus-themes evil];
      overrides = self: super: { };
    };
  };
}
