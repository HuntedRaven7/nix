{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.plasma = {
    pkgs,
    lib,
    ...
  }: {
  services = {
    displayManager.plasma-login-manager.enable = true;
    };
  };
}
