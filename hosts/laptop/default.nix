{ ... }:
{
    imports = [
        # system
        ../../modules/system/boot.nix
        ../../modules/system/locale.nix
        ../../modules/system/network.nix
        ../../modules/system/packages.nix
        ../../modules/system/services.nix
        ../../modules/system/users.nix
        ../../modules/system/virtualisation.nix

        # desktop
        ../../modules/desktop/gnome.nix

        # programs
        ../../modules/programs/git.nix
        ../../modules/programs/nano.nix
        ../../modules/programs/npm.nix
        ../../modules/programs/python.nix
    ];
}