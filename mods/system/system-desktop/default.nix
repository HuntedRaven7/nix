{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.system-desktop = {
    pkgs,
    lib,
    ...
  }: let
    modules = with self.nixosModules; [
      user-desktop
      nix-desktop
      hardware-desktop
      locale-desktop
    ];
  in {
    imports =
      [
        /etc/nixos/hardware-configuration.nix
      ]
      ++ modules;
    services = {
      openssh.enable = true;
      avahi.enable = true;
    };
    environment.systemPackages = with pkgs; [
      vim
      unzip
      p7zip-rar
      usbutils
      lsof
      gvfs
      libnotify
      python315
      curlWithGnuTls
      wget
    ];
    system.stateVersion = "26.05";
  };
}

