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
    environment.systemPackages = with pkgs; [
     rofi
     impression
     kitty
     mako
     fastfetch
     git
     neovim
     discord
     waybar
    ];
   };
}
