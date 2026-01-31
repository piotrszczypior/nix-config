{ config, pkgs, ... }:
{
  # Enable networking
  networking.networkmanager.enable = true;

  networking.hostName = "nixos"; # Define your hostname.
  # networking.wireless.enable = true;  # Enables wireless support via wpa_supplicant.

  # vpn
  networking.firewall.checkReversePath = false; 
  environment.systemPackages = with pkgs; [
    wireguard-tools 
    protonvpn-gui
  ];


  # Open ports in the firewall.
  # networking.firewall.allowedTCPPorts = [ ... ];
  # networking.firewall.allowedUDPPorts = [ ... ];
  # Or disable the firewall altogether.
  # networking.firewall.enable = false;
}