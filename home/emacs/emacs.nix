{ config, pkgs, ... }: {

  imports = [
    ./modes.nix
    ./init.nix
    ./code.nix
  ];

  programs = {

    emacs = {

      enable = true;

      package = pkgs.emacs-gtk;

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
