{ config, pkgs, inputs, ... }:

{
  services = {
    openssh.enable = true;
    avahi.enable = true;
  };
  networking.networkmanager.enable = true;
  networking.hostName = "desktop-0";
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";
}
