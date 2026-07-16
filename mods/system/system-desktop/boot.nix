
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
      initrd.luks.devices."luks-302da0e2-8ee5-4b35-a88b-ae094d3904ba".device = "/dev/disk/by-uuid/302da0e2-8ee5-4b35-a88b-ae094d3904ba";
      kernelPackages = pkgs.linuxPackages_latest;
    };
  };
}
