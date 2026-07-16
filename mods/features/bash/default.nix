 {
  self,
  inputs,
  ...
}: {
  flake.nixosModules.bash = {
    pkgs,
    lib,
    ...
  }: {
programs.bash = {
    shellAliases = {
      ll = "ls -la";
     };
   };
programs.bash.interactiveShellInit = ''
  export PATH="$PATH:$HOME/.cargo/bin"
  eval "$(starship init bash)"
'';
  programs.starship = {
    enable = true;
  };
 };
}
