{ pkgs, ... }:

{
  users.users.edward.packages = with pkgs; [
    kitty
    emacs
  ];
}
