{ config, pkgs, ... }:
{
  services.xserver = {
    enable = true;

    displayManager.lightdm.enable = true;

    desktopManager = {
      xterm.enable = false;
    };

    windowManager.i3 = {
      enable = true;
      extraPackages = with pkgs; [
        dmenu
        i3status 
        # i3blocks 
     ];
     
      configFile = ./../../config/i3/config;
    };

    xkb = {
      layout = "pl";
      variant = "";
    };
  };

  services.libinput = {
    enable = true;

    mouse = {
      accelProfile = "flat";
      accelSpeed = "0.2";
    };
  };

  services.displayManager = {
    defaultSession = "none+i3";
  };

  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "piotrszczypior";

  environment.systemPackages = with pkgs; [
    alacritty

    # screenshots 
    xclip
    xdotool
    maim
  ];
# xsession.windowManager.i3.configFile = ./config;
  # config
  # environment.etc."i3/config".source = ./../../config/i3/config;
}