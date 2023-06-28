{ config, pkgs, ... }: {

  home.file = {
    ".emacs.d/init.el".text = ''
      ;;interface
      (menu-bar-mode 0)
      (tool-bar-mode 0)
      (global-linum-mode 1)

      ;;modus-themes https://protesilaos.com/emacs/modus-themes
      (require 'modus-themes)
      (load-theme 'modus-vivendi :no-confirm)

      ;;Centaur tabs https://github.com/ema2159/centaur-tabs
      (require 'centaur-tabs)
      (centaur-tabs-mode t)

      ;;nix mode https://github.com/NixOS/nix-mode
      (require 'nix-mode)
      (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))

      ;;Enable Evil
      (require 'evil)
      (evil-mode 1)
      (define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
      (define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)
    '';
  };
  programs = {
    emacs = {
      enable = true;
      package = pkgs.emacs-nox;
      extraConfig = "";
      extraPackages = epkgs:
        with epkgs; [
          modus-themes
          evil
          nix-mode
          centaur-tabs
          all-the-icons
          nerd-icons
        ];
      overrides = self: super: { };
    };
  };
}
