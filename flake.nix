{ description = "Outer Wilds Ventures Flake";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-23.11";
    home-manager.url = "github:nix-community/home-manager/release-23.11";
    home-manager.inputs.nixpkgs.follows = "nixpkgs";
    catppuccin.url = "github:catppuccin/nix";
    #agenix.url = "github:ryantm/agenix";
    helix.url = "github:helix-editor/helix/master";
  };

  outputs = inputs@{
    self,
    nixpkgs,
    nixpkgs-unstable,
    catppuccin,
    home-manager,
    #agenix,
    ...
  }:{ 
    nixosConfigurations = {
      "timber-hearth" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
          pkgs-unstable = import nixpkgs-unstable {
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
          pkgs-unstable = import nixpkgs-unstable {
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