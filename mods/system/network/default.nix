{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.network = {
    pkgs,
    lib,
    ...
  }: {
    networking = {
      networkmanager = {
        enable = true;
      };
    };
    # networking.firewall.allowedTCPPorts = [ ... ];
    # networking.firewall.allowedUDPPorts = [ ... ];
  };
}
