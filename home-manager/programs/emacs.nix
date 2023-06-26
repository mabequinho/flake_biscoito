{ config, pkgs, ... }: {

home.file = {

".emacs.d/init.el".text = ''
(add-to-list 'custom-theme-load-path "${pkgs.emacsPackages.moe-theme}/share/emacs/site-lisp/elpa/moe-theme-20230518.1108/")
(add-to-list 'load-path "${pkgs.emacsPackages.moe-theme}/share/emacs/site-lisp/elpa/moe-theme-20230518.1108/")
(require 'moe-theme)
;; Show highlighted buffer-id as decoration. (Default: nil)
(setq moe-theme-highlight-buffer-id t)
;; Choose a color for modeline.(Default: blue)
(setq moe-theme-modeline-color 'magenta)
(moe-dark)
'';

};
  programs = {
    emacs = {
      enable = true;
      package = pkgs.emacs-nox;
      extraConfig = '' 
      '';
      extraPackages = epkgs: with epkgs; [ moe-theme jupyter ];
      overrides = self: super: {};
    };
  };
}
