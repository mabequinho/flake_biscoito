{ inputs, lib, config, pkgs, ... }: {

  imports = [

    inputs.homeage.homeManagerModules.homeage
    inputs.hyprland.homeManagerModules.default
    ./desktop.nix

  ];

  nixpkgs = {
    # You can add overlays here
    overlays = [
      # If you want to use overlays exported from other flakes:
      # neovim-nightly-overlay.overlays.default

      # Or define it inline, for example:
      # (final: prev: {
      #   hi = final.hello.overrideAttrs (oldAttrs: {
      #     patches = [ ./change-hello-to-hi.patch ];
      #   });
      # })
    ];
    # Configure your nixpkgs instance
    config = {
      # Disable if you don't want unfree packages
      allowUnfree = true;
      # Workaround for https://github.com/nix-community/home-manager/issues/2942
      allowUnfreePredicate = (_: true);
      packageOverrides = pkgs: {
        nur = import (builtins.fetchTarball
          "https://github.com/nix-community/NUR/archive/master.tar.gz") {
            inherit pkgs;
          };
      };
    };
  };

  home = {
    username = "mabeco";
    homeDirectory = "/home/mabeco";
    sessionVariables = { QT_QPA_PLATFORM = "wayland"; };
  };
  homeage = {
    identityPaths = [ "~/.ssh/id_ed25519" ];
    installationType = "systemd";
    pkg = pkgs.rage;
    file."mail.nix" = { source = ./programs/age/mail.nix.age; };
    file."task.nix" = { source = ./programs/age/task.nix.age; };
    file."ssystemd.nix" = { source = ./services/ssystemd.nix.age; };
  };
  # Enable home-manager
  programs.home-manager.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";

}
