{ description = "Outer Wilds Ventures NixOS Flake";

  inputs = {
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-23.11";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    home-manager.url = "github:nix-community/home-manager";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    catppuccin.url = "github:catppuccin/nix";
    #agenix.url = "github:ryantm/agenix";
    helix.url = "github:helix-editor/helix/master";
  };

  outputs = inputs@{
    self,
    nixpkgs,
    nixpkgs-stable,
    catppuccin,
    home-manager,
    agenix,
    ...
  }:{ 
    nixosConfigurations = {
      "timber-hearth" = nixpkgs.lib.nixosSystem {
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
          #agenix.nixosModules.default
          catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.nick = { imports = [
              ./home
              catppuccin.homeManagerModules.catppuccin ];
            };
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
          #agenix.nixosModules.default
          catppuccin.nixosModules.catppuccin
          home-manager.nixosModules.home-manager {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;
            home-manager.users.nick = { imports = [
              ./home
              catppuccin.homeManagerModules.catppuccin ];
            };
          }
        ];
      };
    };
  };
}