{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.hardware-desktop = {
    pkgs,
    lib,
    ...
  }: {
    hardware = {
      bluetooth.enable = true;
      xpadneo.enable = true;
    };
  };
}

