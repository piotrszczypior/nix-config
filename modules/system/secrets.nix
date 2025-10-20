{ config, inputs, pkgs, ... }:
{
  imports = [
    inputs.sops-nix.nixosModules.sops
  ];

  sops.defaultSopsFile = ./secrets/github.yaml;
  sops.defaultSopsFormat = "yaml";

  sops.age.keyFile = "/home/piotrszczypior/.config/sops/age/keys.txt"
}