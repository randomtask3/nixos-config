{ description = "Outer Wilds Ventures Flake";

  inputs = {
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-25.05";
    catppuccin.url = "github:catppuccin/nix";
    #agenix.url = "github:ryantm/agenix";
    #helix.url = "github:helix-editor/helix/master";
  };

  outputs = inputs@{
    self,
    nixpkgs,
    nixpkgs-unstable,
    catppuccin,
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
        ];
      };

      "attlerock" = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";
        specialArgs = {
          inherit inputs;
          pkgs-unstable = import nixpkgs-unstable {
            system = "x86_64-linux";
            config.allowUnfree = true;
          };
        };
        modules = [
          ./hosts/attlerock
          #agenix.nixosModules.default
          catppuccin.nixosModules.catppuccin
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
        ];
      };
    };
  };
}
