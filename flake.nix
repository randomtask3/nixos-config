{ description = "Outer Wilds Ventures Flake";

  inputs = {
    nixpkgs-stable.url = "github:NixOS/nixpkgs/nixos-25.11";
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-unstable";
    catppuccin.url = "github:catppuccin/nix";
    # agenix.url = "github:ryantm/agenix";
    jovian = {
      url = "github:Jovian-Experiments/Jovian-NixOS";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs @ { 
    self, nixpkgs, nixpkgs-stable, catppuccin, jovian, ... 
  }:

  let
    commonSpecialArgs = {
      inherit inputs;
      pkgs-stable = import nixpkgs-stable {
        system = "x86_64-linux";
        config.allowUnfree = true;
      };
    };

    mkHost = hostName: hostPath:
      let
        baseModules = [
          catppuccin.nixosModules.catppuccin
          jovian.nixosModules.default
          # agenix.nixosModules.default
        ];
      in {
        name = hostName;
        value = nixpkgs.lib.nixosSystem {
          system = "x86_64-linux";
          specialArgs = commonSpecialArgs // { inherit hostName; };
          modules = [ hostPath ] ++ baseModules;
        };
      };

    hostList = [
      { name = "timber-hearth";   path = ./hosts/timber-hearth; }
      { name = "attlerock";      path = ./hosts/attlerock; }
      { name = "dark-bramble";   path = ./hosts/dark-bramble; }
      { name = "interloper";     path = ./hosts/interloper; }
    ];

    nixosConfigurations =
      builtins.listToAttrs (map (h: mkHost h.name h.path) hostList);
  in
  {
    inherit nixosConfigurations;
  };
}