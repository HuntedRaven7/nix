{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.gdm = {
    pkgs,
    lib,
    ...
  }: {
  services.displayManager.gdm.enable = true;
  };
}

