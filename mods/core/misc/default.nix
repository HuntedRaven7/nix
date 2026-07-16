{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.misc = {
    pkgs,
    lib,
    ...
  }: {
    services.flatpak.enable = true;
    environment.systemPackages = with pkgs; [
     rofi
     impression
     kitty
     mako
     awww
     waypaper
     fastfetch
     git
     neovim
     discord
     waybar
    ];
   };
}
