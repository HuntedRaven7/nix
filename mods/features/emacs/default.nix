{
  inputs,
  moduleWithSystem,
  ...
}: {
  flake.nixosModules.emacs = moduleWithSystem (
    {self'}: {
    programs.emacs = {
     enable = true;
     package = pkgs.emacs; 
      extraPackages = epkgs: [
       epkgs.nix-mode
       epkgs.nixfmt
       epkgs.evil
       epkgs.avy
  ];
  extraConfig = ''
    (setq standard-indent 2)
    (global-set-key (kbd "C-x j") 'avy-goto-char)
  '';
 };
}
