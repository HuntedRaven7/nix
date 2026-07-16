{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.nvidiaDrivers = {
    pkgs,
    lib,
    ...
  }: {
  hardware.graphics.enable = true;
  services.xserver.videoDrivers = [ "nvidia" ];
  hardware.nvidia.open = true;  
}

