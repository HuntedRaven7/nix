{ config, lib, pkgs, modulesPath, ... }:

{
fileSystems."/mnt/data/SSD" =
    { device = "/dev/disk/by-uuid/16e503f2-955a-41f9-9b9e-8f8ec332a16c";
      fsType = "ext4";
    };
}
