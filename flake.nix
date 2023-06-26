{
  description = "Biscoito";

  inputs = {
    # Nixpkgs
    nixpkgs.url = "github:nixos/nixpkgs/nixos-23.05";

    # Home manager
    home-manager = {
      url = "github:nix-community/home-manager/release-23.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    touhou-cursors = {
      url = "github:mabequinho/touhou-cursors";
      flake = false;
    };

  };

  outputs = { nixpkgs, home-manager, ... }@inputs: {
    nixosConfigurations = {
      biscoito = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; }; # Pass flake inputs to our config
        # > Our main nixos configuration file <
        modules = [ ./nixos/configuration.nix ];
      };
    };

    homeConfigurations = {
      "mabeco@biscoito" = home-manager.lib.homeManagerConfiguration {
        pkgs =
          nixpkgs.legacyPackages.x86_64-linux; # Home-manager requires 'pkgs' instance
        extraSpecialArgs = {
          inherit inputs;
        }; # Pass flake inputs to our config
        modules = [ ./home-manager/home.nix ];
      };
    };
  };
}
