{ config, pkgs, ... }:
{
  # Install firefox.
  programs.firefox.enable = true;

  # Android debug 
  programs.adb.enable = true;

  # app images
  programs.appimage.enable = true;
  programs.appimage.binfmt = true; # double click

  programs.gpu-screen-recorder.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
  #  wget

    # boot 
    sbctl 
    niv 

    rofi
    gimp

    # microphone filter 
    easyeffects

    # dev
    vscode
    git 
    python312
    python312Packages.pip
    nodejs_24 
    docker
    jdk21_headless
    gradle_8
    lua
    android-studio
    code-cursor
    opencode
    codex
    comma

    jq
    # jetbrains
    jetbrains.pycharm-professional
    jetbrains.idea-ultimate

    # applications
    kitty
    discord-ptb
    blender 
    spotify
    teams-for-linux
    google-chrome
    wget
    sops
    tree
    seahorse
    zip 
    unzip
    obsidian
    texlive.combined.scheme-full
    nix-prefetch
    gimp 
    notion-app
    zoom-us

    # File explorers
    kdePackages.kio
    xfce.thunar
    nemo

    graphviz
    mpv
    gpu-screen-recorder-gtk
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}