{ config, ... }: {

  home.file = {

    ".emacs.d/modes.el".text = ''

      ;;nix mode https://github.com/NixOS/nix-mode
      (require 'nix-mode)
      (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))

      ;;python-mode https://gitlab.com/python-mode-devs/python-mode
      ;;https://www.emacswiki.org/emacs?ProgrammingWithPythonModeDotEl
      (autoload 'python-mode "python-mode" "Python Mode." t)
      (add-to-list 'auto-mode-alist '("\\.py\\'" . python-mode))
      (add-to-list 'interpreter-mode-alist '("python" . python-mode))

    '';

  };

}
