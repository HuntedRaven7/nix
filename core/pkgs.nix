# This is just overlap packages that I need on all installs
{ pkgs, ... }:

{
  environment.systemPackages = with pkgs; [
    git
    wget
    btop
    trash-cli
    neovim
    tree
    unzip
    util-linux
    zip
    gcc
    gnumake
    uv
  ];
}
