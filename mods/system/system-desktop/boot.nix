
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
        timeout = 5;
        efi = {
          canTouchEfiVariables = true;
        };
        grub = {
          efiSupport = true;
	  device = "nodev";
        };
      };
      initrd.luks.devices."luks-302da0e2-8ee5-4b35-a88b-ae094d3904ba".device = "/dev/disk/by-uuid/302da0e2-8ee5-4b35-a88b-ae094d3904ba";
      kernelPackages = pkgs.linuxPackages_latest;
    };
  };
}
