{
  moduleWithSystem,
  self,
  inputs,
  ...
}: {
  flake.nixosModules.gui = moduleWithSystem ({
    self',
    pkgs,
    inputs',
    ...
  }: {
  programs.hyprland = {
    enable = true;
    withUWSM = true; 
    xwayland.enable = true; 
  });
 }
