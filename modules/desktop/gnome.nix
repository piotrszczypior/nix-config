{ config, pkgs, ... }:
{
  # Enable the X11 windowing system.
  services.xserver.enable = true;

  # Enable the GNOME Desktop Environment.
  services.xserver.displayManager.gdm = {
    enable = true;
    wayland = true;
  };
  services.xserver.desktopManager.gnome.enable = true;

  # Workaround for GNOME autologin: https://github.com/NixOS/nixpkgs/issues/103746#issuecomment-945091229
  systemd.services."getty@tty1".enable = false;
  systemd.services."autovt@tty1".enable = false;

  # Configure keymap in X11
  services.xserver.xkb = {
    layout = "pl";
    variant = "";
  };

  environment.systemPackages = with pkgs; [
    gnome-extension-manager
    gnomeExtensions.blur-my-shell
    gnomeExtensions.app-icons-taskbar
    gnomeExtensions.user-themes
    gnomeExtensions.vitals
    gnomeExtensions.arc-menu
    gnomeExtensions.impatience
  ];

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "piotrszczypior";
}