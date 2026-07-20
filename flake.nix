{
  description = "My Nix Configuration";
  inputs = {
    nixpkgs.url = "github:NixOS/nixpkgs/nixos-26.05";
    nixpkgs-unstable.url = "github:NixOS/nixpkgs/nixos-unstable";
    flake-parts.url = "github:hercules-ci/flake-parts";
    nix-flatpak.url = "github:gmodena/nix-flatpak/?ref=latest";
    home-manager = {
      url = "github:nix-community/home-manager/release-26.05";
      inputs.nixpkgs.follows = "nixpkgs";
    };
  };

  outputs = inputs@{self, nixpkgs, nixpkgs-unstable, nix-flatpak, flake-parts, home-manager, ...}:
    flake-parts.lib.mkFlake { inherit inputs; } {
      systems = [
        "x86_64-linux"
        "aarch64-linux"
        "x86_64-darwin"
        "aarch64-darwin"
      ];

      flake =
        let
          mkHost =
            {
              hostname,
              system,
            }:
            nixpkgs.lib.nixosSystem {
              inherit system;

              specialArgs = { inherit inputs self; };

              modules = [
                ./hosts/${hostname}
                ./core
                nix-flatpak.nixosModules.nix-flatpak
                home-manager.nixosModules.home-manager

                {
                  home-manager = {
                    useGlobalPkgs = true;
                    useUserPackages = true;

                    extraSpecialArgs = {
                      inherit inputs self;
                    };

                    users.edward = import /etc/nixos/hardware-configuration.nix;
                  };
                }
              ];
            };

          mkHome =
            {
              username,
              system,
            }:
            home-manager.lib.homeManagerConfiguration {
              pkgs = import nixpkgs {
                inherit system;
              };

              extraSpecialArgs = {
                inherit inputs self;
              };

              modules = [
                ./hosts/home/${username}.nix
              ];
            };
        in
        {
          nixosConfigurations = {
            desktop = mkHost {
              hostname = "desktop-0";
              system = "x86_64-linux";
            };

            laptop = mkHost {
              hostname = "homelab-0";
              system = "x86_64-linux";
            };
          };
          homeConfigurations = {
            "edward@desktop-0" = mkHome {
              username = "edward";
              system = "x86_64-linux";
            };
          };
        };
    };
}
