{ pkgs, pkgs-unstable, ... }:

{
  users.users.edward.packages = with pkgs; [
    pkgs-unstable.kitty
    emacs
  ];
}
