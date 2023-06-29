{ config, ... }: {

  home.file = {

    ".emacs.d/code.el".text = ''

      (add-hook 'prog-mode-hook 'format-all-mode)
    '';

  };

}
