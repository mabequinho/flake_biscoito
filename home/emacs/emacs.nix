{ config, pkgs, ... }: {

  imports = [
    ./modes.nix
    ./init.nix
    ./code.nix
    ./emacs.desktop.nix
  ];

  programs = {

    emacs = {

      enable = true;

      package = pkgs.emacs-nox;

      extraPackages = epkgs:
        with epkgs; [

          #base
          modus-themes
          centaur-tabs
          linum-relative

          #EVIL
          evil
          goto-chg

          #modes
          nix-mode
          python-mode

          #code
          format-all

        ];

      overrides = self: super: { };

    };

  };

}
