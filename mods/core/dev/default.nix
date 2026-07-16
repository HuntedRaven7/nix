{
  self,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.development = moduleWithSystem ({pkgs, ...}: let
    modules = with self.nixosModules; [
      git
    ];
  in {
    imports = modules;
    environment.systemPackages = with pkgs; [
      opencode
      devenv
    ];
  });
}
