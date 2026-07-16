
{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.bootloader-desktop = {
    pkgs,
    lib,
    ...
  }: {
    boot = {
      loader = {
        systemd-boot.enable = true;
        timeout = 5;
      };
      kernelPackages = pkgs.linuxPackages_latest;
    };
  };
}
