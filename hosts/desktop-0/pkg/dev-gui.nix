{ pkgs, unstable, ... }:

{
  users.users.edward.packages = with pkgs; [
    unstable.kitty
    emacs
  ];
}
