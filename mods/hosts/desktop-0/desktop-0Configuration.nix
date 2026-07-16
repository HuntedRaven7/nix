
{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.desktop-0Configuration = {...}: {
    networking = {
      hostName = "desktop-0";
    };
  };
}
