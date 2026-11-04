{ config, pkgs, lib, ... }:
{
  # Install firefox.
  programs.firefox = {
    enable = true;
    package = pkgs.firefox-bin;
  };

  # app images
  programs.appimage.enable = true;
  programs.appimage.binfmt = true; # double click

  programs.gpu-screen-recorder.enable = true;

  # Allow unfree packages
  nixpkgs.config.allowUnfree = true;
  nixpkgs.config.allowUnsupportedSystem = true;

  # direnv
  programs.direnv.enable = true;

  programs.nix-ld = {
    enable = true;
    libraries = with pkgs; lib.mkForce [
      zlib 
      zstd
      stdenv.cc.cc.lib
      libGL
      fontconfig
      libx11
      libxcb
      libxext
      libxrender
      libxtst
      libxi
      libsm
      glib
    ];
  };
  
  programs.fuse.userAllowOther = true;

  # List packages installed in system profile. To search, run:
  # $ nix search wget
  environment.systemPackages = with pkgs; [
  #  vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    pulseaudio

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
    python314
    python314Packages.pip
    nodejs_24 
    docker
    openjdk25_headless
    gradle_9
    lua
    android-studio
    code-cursor
    opencode
    codex
    comma
    jq
    jetbrains.idea

    # applications
    discord-ptb
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
    claude-code
    nemo
    rclone
    graphviz
    mpv
    gpu-screen-recorder-gtk
    xhost
    xdotool
    alttab
  ];

  # Some programs need SUID wrappers, can be configured further or are
  # started in user sessions.
  # programs.mtr.enable = true;
  # programs.gnupg.agent = {
  #   enable = true;
  #   enableSSHSupport = true;
  # };
}