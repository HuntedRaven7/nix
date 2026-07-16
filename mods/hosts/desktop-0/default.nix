{
  self,
  inputs,
  ...
}: {
  flake.nixosConfigurations.desktop-0 = inputs.nixpkgs.lib.nixosSystem {
    modules = with self.nixosModules; [
      desktop
      desktop-0Configuration
      nvidiaDrivers
      sddm
      audio
      git 
     # kitty
      gaming
      misc
      gui
      brave
    ];
  };
}

