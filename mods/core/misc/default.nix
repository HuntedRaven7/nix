{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.misc = {
    pkgs,
    lib,
    ...
  }: {
    environment.systemPackages = with pkgs; [
     rofi
     kitty
     git
    ];
   };
}
