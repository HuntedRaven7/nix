{
  self,
  inputs,
  pkgs,
  ...
}: {
  flake.nixosModules.emacs = {
    pkgs,
    lib,
    ...
  }: {
  programs.emacs = {
  enable = true;
  package = pkgs.emacs; # replace with pkgs.emacs-gtk if desired
  extraPackages = epkgs: [
    epkgs.nix-mode
    epkgs.nixfmt
    epkgs.avy
    epkgs.magit
  ];
  extraConfig = ''
    (setq standard-indent 2)
    (global-set-key (kbd "C-:") 'avy-goto-char)
  '';
  };
 };
}
