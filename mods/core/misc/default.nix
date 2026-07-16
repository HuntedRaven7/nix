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
     fastfetch
     git
     neovim
     discord
     waybar
    ];
   };
}
