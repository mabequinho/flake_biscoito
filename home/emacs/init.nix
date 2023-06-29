{ config, ... }: {

  home.file = {

    ".emacs.d/init.el".text = ''

      ;;interface
      (menu-bar-mode 0)
      (tool-bar-mode 0)
      (require 'linum-relative)
      (setq linum-relative-backend 'display-line-numbers-mode)
      (linum-relative-global-mode)
      (setq inhibit-startup-screen t)
      ;;font
      (add-to-list 'default-frame-alist
             '(font . "Mononoki Nerd Font Mono-8"))


      ;;modus-themes https://protesilaos.com/emacs/modus-themes
      (require 'modus-themes)
      (load-theme 'modus-vivendi :no-confirm)

      ;;Centaur tabs https://github.com/ema2159/centaur-tabs
      (require 'centaur-tabs)
      (centaur-tabs-mode t)

      ;;Enable Evil
      (require 'evil)
      (evil-mode 1)
      (define-key evil-normal-state-map (kbd "g t") 'centaur-tabs-forward)
      (define-key evil-normal-state-map (kbd "g T") 'centaur-tabs-backward)

    '';

  };

}
