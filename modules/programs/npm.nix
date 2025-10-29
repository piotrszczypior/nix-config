{ config, pkgs, ... }: 
{
  programs.bash.shellInit = ''
    mkdir -p ~/.npm-global
    export NPM_CONFIG_PREFIX=~/.npm-global
    export PATH=~/.npm-global/bin:$PATH
  '';
}