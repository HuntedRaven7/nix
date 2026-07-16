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
  services.displayManager.gdm.enable = true;
  services.desktopManager.gnome.enable = true;
   programs.hyprland = {
      enable = true;
      withUWSM = true; 
      xwayland.enable = true; 
     };
    };
  }

