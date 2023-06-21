{ inputs, lib, config, pkgs, ... }: {
  # You can import other home-manager modules here
  imports = [
    # If you want to use home-manager modules from other flakes (such as nix-colors):
    # inputs.nix-colors.homeManagerModule

    # You can also split up your configuration and import pieces of it here:
    # ./nvim.nix
    ./programs.nix
    ./files.nix
    ./terminal/fish.nix
    ./packages.nix
    ./dconf.nix
    ./systemd.nix
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
    sessionVariables = { VISUAL = "nvim"; };
    sessionPath = [ "$HOME/.local/bin" ];
  };

  homeage = {
    identityPaths = [ "~/.ssh/id_ed25519" ];

    installationType = "systemd";

    file.mabeco_keys = {
      # Path to encrypted file tracked by the git repository
      source = ./files/mabeco.age;
      symlinks = [ "${config.xdg.configHome}/mabeco_keys/mabeco_keys" ];
      copies = [ "${config.xdg.configHome}/no-symlink-support/mabeco_keys" ];
    };
  };

  # Enable home-manager
  programs.home-manager.enable = true;
  # Nicely reload system units when changing configs
  systemd.user.startServices = "sd-switch";

  # https://nixos.wiki/wiki/FAQ/When_do_I_update_stateVersion
  home.stateVersion = "23.05";
}
