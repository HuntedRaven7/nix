{ python3, config, pkgs, ... }:

{
  services.flatpak.enable = true;
  services.flatpak.packages = [
    "moe.launcher.an-anime-game-launcher"
    "moe.launcher.the-honkers-railway-launcher"
    "moe.launcher.sleepy-launcher"
  ];
  services.flatpak.update.auto = {
  enable = true;
  onCalendar = "weekly"; # Default value
  };
}
