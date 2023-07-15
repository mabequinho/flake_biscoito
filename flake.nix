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
  };

  outputs = { nixpkgs, home-manager, touhou-cursors, homeage, ... }@inputs: {

    nixosConfigurations = {
      biscoito = nixpkgs.lib.nixosSystem {
        specialArgs = { inherit inputs; }; # Pass flake inputs to our config
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
        modules = [ ./home/home.nix ];
      };
    };

  };

}
