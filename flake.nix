{
  description = "MyNixOS";

  inputs = {
    nixpkgs.url = "nixpkgs/nixos-26.05";

    nixpkgs-unstable.url = "nixpkgs/nixos-unstable";

    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = {
    nixpkgs,
    nixpkgs-unstable,
    home-manager,
    ...
  }:

  let
    system = "x86_64-linux";
    unstablePkgs = nixpkgs-unstable.legacyPackages.${system};
  in

  {
    nixosConfigurations.MyNix = nixpkgs.lib.nixosSystem {
      inherit system;

      modules = [
        ./configuration.nix

        home-manager.nixosModules.home-manager

        {
          home-manager = {
            useGlobalPkgs = true;
            useUserPackages = true;

            extraSpecialArgs = {
              inherit unstablePkgs;
            };

            users.rex = import ./home.nix;
          };
        }
      ];
    };
  };
}
