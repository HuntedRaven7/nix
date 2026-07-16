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
      audio
      security
      git 
      # flatpak
      kitty
      gaming
      misc
      gui
      brave
    ];
  };
}

