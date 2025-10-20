{ config, pkgs, ... }:
{
  virtualisation.virtualbox.host.enable = true;
  virtualisation.virtualbox.host.enableExtensionPack = true;
  users.extraGroups.vboxusers.members = [ "piotrszczypior" ];
  boot.kernelParams = [ "kvm.enable_virt_at_load=0" ];
}