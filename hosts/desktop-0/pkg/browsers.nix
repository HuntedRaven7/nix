{ pkgs, unstable, ... }:

{
  users.users.edward.packages = with pkgs; [
    brave
    firefox
    google-chrome
  ];
}
