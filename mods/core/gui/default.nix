{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.gui = {
    pkgs,
    lib,
    ...
  }: {
   services.displayManager.sddm.enable = true;
   services.displayManager.sddm.wayland.enable = true;
   programs.hyprland = {
      enable = true;
      withUWSM = true; 
      xwayland.enable = true; 
     };
    };
  }

