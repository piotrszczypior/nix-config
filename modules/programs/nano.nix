{ config, pkgs, ... }: 
{
  programs.nano = {
    enable = true;
    syntaxHighlight = true;
    nanorc = ''
      set tabstospaces
      set tabsize 2
    '';
  };
}