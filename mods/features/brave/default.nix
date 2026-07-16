{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.brave = moduleWithSystem (
    {self'}: {
     environment.systemPackages = with pkgs; [
	brave
     ];
    }
  );
}
