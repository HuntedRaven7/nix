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
   programs.hyprland = {
      enable = true;
      withUWSM = true; 
      xwayland.enable = true; 
     };
    };
  };
}

