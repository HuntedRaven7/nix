
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
      initrd.luks.devices."luks-bccb1834-c5b2-44a3-99e7-44b7ff84bd30".device = "/dev/disk/by-uuid/bccb1834-c5b2-44a3-99e7-44b7ff84bd30";
      loader = {
        systemd-boot.enable = true;
        timeout = 5;
      };
      kernelPackages = pkgs.linuxPackages_latest;
    };
  };
}
