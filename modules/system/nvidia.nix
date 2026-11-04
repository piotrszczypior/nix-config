{ config, pkgs, ... }:
{
  nixpkgs.config = {
    allowUnfree = true;
    cudaSupport = true;
    cudaCapabilities = [ "8.9" ];

    packageOverrides = super: {
      _cuda = super._cuda.extend (
        _: prevAttrs: {
          extensions = prevAttrs.extensions ++ [ (_: _: { cuda_compat = null; }) ];
        }
      );
    };
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.graphics.enable = true;

  hardware.nvidia-container-toolkit.enable = true;  
  
  environment.systemPackages = with pkgs; [
    cudaPackages.cuda_nvcc
    cudaPackages.cuda_cudart
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}