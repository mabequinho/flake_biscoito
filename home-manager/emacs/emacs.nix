{ config, pkgs, ... }: {

  imports = [
    ./modes.nix
    ./init.nix
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
          evil

          #modes
          nix-mode
          python

        ];

      overrides = self: super: { };

    };

  };

}
