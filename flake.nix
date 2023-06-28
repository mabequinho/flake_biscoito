{
  description = "Biscoito";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-unstable";
    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager";
      inputs.nixpkgs.follows = "nixpkgs";
    };
    homeage = {
      url = "github:jordanisaacs/homeage";
      # Optional
      inputs.nixpkgs.follows = "nixpkgs";
    };
    touhou-cursors = {
      url = "github:mabequinho/touhou-cursors";
      flake = false;
    };
    hyprland.url = "github:hyprwm/Hyprland";
    hyprland-contrib = {
      url = "github:hyprwm/contrib";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = { nixpkgs, home-manager, homeage, hyprland, ... }@inputs: {
    nixosConfigurations = {
      biscoito = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; }; # Pass flake inputs to our config
        # > Our main nixos configuration file <
        modules = [
          hyprland.nixosModules.default
          { programs.hyprland.enable = true; }
          ./nixos/configuration.nix
        ];
      };
    };

    homeConfigurations = {
      "mabeco@biscoito" = home-manager.lib.homeManagerConfiguration {
        pkgs =
          nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {
          inherit inputs;
        }; # Pass flake inputs to our config
        modules = [
          ./home-manager/home.nix
          homeage.homeManagerModules.homeage
          hyprland.homeManagerModules.default
        ];
      };
    };
  };
}
