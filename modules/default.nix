{ ... }:
{
    imports = [
        # system
        ./system/boot.nix
        ./system/desktop.nix
        ./system/locale.nix
        ./system/network.nix
        ./system/nvidia.nix
        ./system/packages.nix
        ./system/secureboot.nix
        ./system/services.nix
        ./system/users.nix
        ./system/virtualisation.nix

        # programs
        ./programs/git.nix
        ./programs/nano.nix
    ];
}