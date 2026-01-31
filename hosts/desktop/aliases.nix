{ ... }:
{
  environment.shellAliases = {
    nixrebuild = "sudo nixos-rebuild switch --flake ~/nix-config#desktop";
    nixcode = "code ~/nix-config";
  };
}