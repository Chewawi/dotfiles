{
  description = "NixOS Config";

  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    illogical-flake = {
      url = "path:/home/chewawi/illogical-flake";
      inputs.nixpkgs.follows = "nixpkgs";
    };

    # spotify
    spicetify-nix = {
      url = "github:Gerg-L/spicetify-nix";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs =
    {
      self,
      nixpkgs,
      home-manager,
      illogical-flake,
      spicetify-nix,
      nixvim,
      ...
    }@inputs:
    {
      nixosConfigurations.nixos = nixpkgs.lib.nixosSystem {
        system = "x86_64-linux";

        modules = [
          ./hosts/laptop/configuration.nix

          home-manager.nixosModules.home-manager

          {
            home-manager.useGlobalPkgs = true;
            home-manager.useUserPackages = true;

            home-manager.backupFileExtension = "bak";

            home-manager.extraSpecialArgs = { inherit inputs; };

            home-manager.sharedModules = [
              illogical-flake.homeManagerModules.default
              spicetify-nix.homeManagerModules.default
              nixvim.homeManagerModules.default
            ];

            home-manager.users.chewawi = import ./home;
          }
        ];
      };
    };
}
