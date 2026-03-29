{ config, pkgs, ... }:
{
  # Enable networking
  networking.networkmanager.enable = true;

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