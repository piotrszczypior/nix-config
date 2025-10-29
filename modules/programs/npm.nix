{ config, pkgs, ... }: 
{
  programs.bash.shellInit = ''
    mkdir -p ~/.npm-global
    npm config set prefix '~/.npm-global'
  '';
  
  environment.sessionVariables = {
    NPM_CONFIG_PREFIX = "$HOME/.npm-global";
  };
}