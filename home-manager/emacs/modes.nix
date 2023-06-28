{ config, ... }: {

  home.file = {

    ".emacs.d/modes.el".text = ''

      ;;nix mode https://github.com/NixOS/nix-mode
      (require 'nix-mode)
      (add-to-list 'auto-mode-alist '("\\.nix\\'" . nix-mode))

    '';

  };

}
