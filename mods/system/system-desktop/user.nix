
{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.user-desktop = {
    pkgs,
    lib,
    ...
  }: let
    modules = with self.nixosModules; [
      bash
    ];
  in {
    imports = modules;
    users.users.edward = {
      isNormalUser = true;
      shell = pkgs.bash;
      description = "edward";
      extraGroups = [
        "networkmanager"
        "wheel"
      ];
    };
  };
}
