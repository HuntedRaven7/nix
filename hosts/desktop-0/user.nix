{ config, pkgs, inputs, ... }:

{
  i18n.defaultLocale = "en_CA.UTF-8";
  time.timeZone = "America/Toronto";
  users.users."edward" = {
    isNormalUser = true;
    description = "Edward";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
  };
}
