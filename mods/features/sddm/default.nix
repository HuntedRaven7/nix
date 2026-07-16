{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.sddm = {
    pkgs,
    lib,
    ...
  }: {
  services.displayManager.gdm.enable = true;
    # services.displayManager.sddm = {
    #   enable = true;
    # };
  };
}

