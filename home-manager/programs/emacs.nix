{ config, pkgs, ... }: {

  programs = {
    emacs = {
      enable = true;
      package = pkgs.emacs-gtk;
      extraConfig = "";
      extraPackages = epkgs: [];
      overrides = self: super: {};
    };
  };
}
