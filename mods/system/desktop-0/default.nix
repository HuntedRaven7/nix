
{
  self,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.desktop = moduleWithSystem ({...}: let
    modules = with self.nixosModules; [
      system-desktop
      network
    ];
  in {
    imports = modules;
  });
}
