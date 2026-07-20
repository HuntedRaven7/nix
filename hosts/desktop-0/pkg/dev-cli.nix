{ pkgs, pkgs-unstable, ... }:

{
  users.users.edward.packages = with pkgs; [
    clang-tools
    claude-code
    cmake
    gcc
    gnumake
    libtool
    libgcc
    lua
    lua-language-server
    nil
    nixpkgs-fmt
    bash-language-server
    pkg-config
    protobuf
    pipx
    python312Packages.pip
    python313Packages.dbus-next
    ripgrep
    rustup
    shellcheck
    tree-sitter
    zig
    uv
  ];
}

