{
  description = "My Nix Configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };
   outputs = { self, nixpkgs, nixpkgs-unstable, home-manager, nix-flatpak, ... }:
    let
      system = "x86_64-linux";

      mkHost = hostname:
        nixpkgs.lib.nixosSystem {
          inherit system;

          modules = [
            # Global configuration for all machines
            ./core/default.nix

            # Global Hardware Conf
            /etc/nixos/hardware-configuration.nix

            # Host-specific configuration
            ./hosts/${hostname}/default.nix

            # Home Manager integration
            home-manager.nixosModules.home-manager
            
            # Nix Flatpak Setup
            nix-flatpak.nixosModules.nix-flatpak

            {
              home-manager = {
                useGlobalPkgs = true;
                useUserPackages = true;

                #users.yourUsername = import ./home-manager/default.nix;
              };
            }
          ];
        };
    in
    {
      nixosConfigurations = {
        homelab-0 = mkHost "homelab-0";
        desktop-0 = mkHost "desktop-0";
      };
    };
}
