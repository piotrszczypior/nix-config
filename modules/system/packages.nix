{ config, pkgs, ... }:
{
  # Install firefox.
  programs.firefox.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget

    # gnome extensions
    gnome-extension-manager
    gnomeExtensions.blur-my-shell
    gnomeExtensions.app-icons-taskbar
    gnomeExtensions.user-themes
    gnomeExtensions.vitals
    gnomeExtensions.arc-menu
    gnomeExtensions.impatience       
    # gnomeExtensions.dash-to-panel

    # boot 
    sbctl 
    niv 

    # microphone filter 
    easyeffects

    # dev
    vscode
    git 
    python313
    nodejs_24 

    # applications
    kitty
    discord-ptb
    blender 
    spotify
    teams-for-linux
    wget
    sops
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}