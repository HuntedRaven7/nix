{ pkgs, ... }:

{
  users.users.edward.packages = with pkgs; [
    brave
    firefox
    google-chrome
  ];
}
