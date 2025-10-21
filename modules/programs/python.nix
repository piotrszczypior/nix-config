{ config, pkgs, ... }:
{
  # Provide python libraries to path to be accessed from virtual env 
  # https://discourse.nixos.org/t/importerror-libstdc-so-6-cannot-open-shared-object-file-no-such-file-or-directory/41988/4
  programs.bash.interactiveShellInit = ''
    export LD_LIBRARY_PATH="${pkgs.stdenv.cc.cc.lib}/lib:${pkgs.linuxPackages.nvidia_x11}/lib:$LD_LIBRARY_PATH"
    export CUDA_PATH="${pkgs.cudaPackages.cudatoolkit}"
  '';
}