{ config, pkgs, users, ... }: 
{
  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.piotrszczypior = {
    isNormalUser = true;
    description = "Piotr Szczypior";
    extraGroups = [ "networkmanager" "wheel" "docker" ];
    shell = pkgs.bash;
    packages = with pkgs; [];
  };

  # Enable automatic login for the user.
  services.displayManager.autoLogin.enable = true;
  services.displayManager.autoLogin.user = "piotrszczypior";
}