{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.brave = {
    pkgs,
    lib,
    ...
  }: {
    environment.systemPackages = with pkgs; [
     brave
    ];
   };
}
