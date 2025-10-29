{ config, pkgs, ... }: 
{
  programs.bash.interactiveShellInit = ''
    mkdir -p ~/.npm-global
    npm config set prefix '~/.npm-global'
  '';
  
  environment.sessionVariables = {
    NPM_CONFIG_PREFIX = "$HOME/.npm-global";
  };
}