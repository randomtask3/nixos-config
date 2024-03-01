{ description = "Outer Wilds Ventures NixOS Flake";

  inputs = {
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager/master";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    helix.url = "github:helix-editor/helix/master";
  };

  outputs = inputs@{
    self,
    nixpkgs,
    nixpkgs-stable,
    home-manager,
    ...
  }:{ 
    nixosConfigurations = {
      "timber-hearth" = nixpkgs.lib.nixosSystem rec {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
          pkgs-stable = import nixpkgs-stable {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
        };
        modules = [
          ./hosts/timber-hearth
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.nick = import ./home/default.nix;
          }
        ];
      };

      "dark-bramble" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
          pkgs-stable = import nixpkgs-stable {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
        };
        modules = [
          ./hosts/dark-bramble
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.nick = import ./home/default.nix;
          }
        ];
      };
    };
  };
}