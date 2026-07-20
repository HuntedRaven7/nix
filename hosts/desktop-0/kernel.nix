{ config, pkgs, ... }:

{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.initrd.luks.devices."luks-c536b4b8-28d4-47bc-a4af-a396b76dad66".device = "/dev/disk/by-uuid/c536b4b8-28d4-47bc-a4af-a396b76dad66";
}
