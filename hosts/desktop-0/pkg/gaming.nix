{ pkgs, unstable, ... }:

{
  programs.steam = {
  enable = true;
  protontricks.enable = true;
  extraCompatPackages = with pkgs; [
        proton-ge-bin
  ];
 };
 users.users.edward.packages = with pkgs; [
    winetricks
 ];
}

