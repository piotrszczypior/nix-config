{ config, pkgs, ... }:
{
  environment.variables = {
    EDITOR = "nano"; 
    VISUAL = "nano";
  };
}