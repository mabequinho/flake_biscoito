{ config, pkgs, ... }: {

  home.file = {

    ".emacs.d/init.el".text = ''
      ;; If you want to use powerline, (require 'powerline) must be
      ;; before (require 'moe-theme).
      (add-to-list 'load-path "${pkgs.emacsPackages.powerline}/share/emacs/site-lisp/elpa/powerline-*/")
      (require 'powerline)
      ;; Moe-theme
      (add-to-list 'custom-theme-load-path "${pkgs.emacsPackages.moe-theme}/share/emacs/site-lisp/elpa/moe-theme-*/")
      (add-to-list 'load-path "${pkgs.emacsPackages.moe-theme}/share/emacs/site-lisp/elpa/moe-theme-*/")
      (require 'moe-theme)
      ;; Show highlighted buffer-id as decoration. (Default: nil)
      (setq moe-theme-highlight-buffer-id t)
      ;; Choose a color for modeline.(Default: blue)
      (setq moe-theme-modeline-color 'purple)
      (moe-dark)
      (powerline-moe-theme)
    '';

  };
  programs = {
    emacs = {
      enable = true;
      package = pkgs.emacs-gtk;
      extraConfig = "";
      extraPackages = epkgs: with epkgs; [ moe-theme powerline ];
      overrides = self: super: { };
    };
  };
}
