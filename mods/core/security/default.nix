{
  self,
  inputs,
  ...
}: {
  flake.nixosModules.security = {
    pkgs,
    lib,
    ...
  }:{
  security.polkit.enable = true;

  services.gnome.gnome-keyring.enable = true;
  services.gnome.gcr-ssh-agent.enable = false;

  programs.ssh.startAgent = true;

  security.pam.services.login.enableGnomeKeyring = true;
  security.pam.services.sddm.enableGnomeKeyring = true;

  # Polkit agent for Hyprland/Niri (KDE Plasma uses its own polkit-kde-agent)
  systemd.user.services.polkit-gnome-authentication-agent-1 = {
    description = "polkit-gnome-authentication-agent-1";
    wantedBy = [ "graphical-session.target" ];
    wants = [ "graphical-session.target" ];
    after = [ "graphical-session.target" ];
    serviceConfig = {
      Type = "simple";
      ExecStart = "${pkgs.polkit_gnome}/libexec/polkit-gnome-authentication-agent-1";
      Restart = "on-failure";
      RestartSec = 1;
      TimeoutStopSec = 10;
    };
    unitConfig = {
      # Only start in Hyprland or Niri, not in Plasma (which has its own agent)
      ConditionEnvironment = "!XDG_CURRENT_DESKTOP=KDE";
    };
  };

  services.xserver.displayManager.sessionCommands = ''
    eval $(systemctl --user show-environment | grep '^SSH_AUTH_SOCK=' | sed 's/^/export /')
    eval $(systemctl --user show-environment | grep '^GNOME_KEYRING_CONTROL=' | sed 's/^/export /')
  '';
  };
}
