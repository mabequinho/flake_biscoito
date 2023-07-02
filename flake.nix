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

  outputs = inputs@{ nixpkgs, home-manager, homeage, touhou-cursors, ... }: {
      nixosConfigurations = {
        biscoito = nixpkgs.lib.nixosSystem {
          specialArgs = { inherit inputs; };
          system = "x86_64-linux";
          modules = [
            ./nixos/configuration.nix
            { programs.hyprland.enable = true; }
            home-manager.nixosModules.home-manager
            {
              home-manager = {
                useGlobalPkgs = false;
                useUserPackages = true;
                users.mabeco = import ./home/home.nix;
                extraSpecialArgs = { inherit inputs; };
              };
            }
          ];
        };
      };
    };

}
