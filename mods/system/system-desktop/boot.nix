
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
      initrd.luks.devices."luks-14a1590a-2a28-4c54-9028-64d5f81e6493".device = "/dev/disk/by-uuid/14a1590a-2a28-4c54-9028-64d5f81e6493";
      loader = {
        systemd-boot.enable = true;
        timeout = 5;
      };
      kernelPackages = pkgs.linuxPackages_latest;
    };
  };
}
