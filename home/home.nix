{ inputs, lib, config, pkgs, ... }: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule
    inputs.homeage.homeManagerModules.homeage
    inputs.hyprland.homeManagerModules.default
    ./programs.nix
    ./files.nix
    ./packages.nix
    ./systemd/systemd.nix
    ./hypr/hyprland.nix
    ./misc/rnnoise.nix
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
    };
  };

  home = {
    username = "mabeco";
    homeDirectory = "/home/mabeco";
  };
  homeage = {
    identityPaths = [ "~/.ssh/id_ed25519" ];
    installationType = "systemd";
    pkg = pkgs.rage;
    file."mail.nix" = { source = ./programs/mail.nix.age; };
    file."task.nix" = { source = ./programs/task.nix.age; };
    file."ssystemd.nix" = { source = ./systemd/ssystemd.nix.age; };
  };
  # Enable home-manager
  programs.home-manager.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
