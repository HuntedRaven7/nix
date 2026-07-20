{ ... }:

{
  imports = [
    ./audio.nix
    ./drivers/nvidia.nix
    ./gui/gnome.nix
    ./kernel.nix
    ./network.nix
    ./pkg/browsers.nix
    ./pkg/dev-cli.nix
    ./pkg/dev-gui.nix
    ./pkg/flatpak.nix
    ./pkg/gaming.nix
    ./user.nix
  ];
}
