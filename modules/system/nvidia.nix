{ config, pkgs, ... }:
{
  # Enable NVIDIA drivers
  services.xserver.videoDrivers = [ "nvidia" ];

  # # Enable OpenGL
  hardware.graphics.enable = true;
  
  # # CUDA support system-wide
  # nixpkgs.config.cudaSupport = true;

  # GPU inside containers
  hardware.nvidia-container-toolkit.enable = true;  
  
  environment.systemPackages = with pkgs; [
    cudaPackages.cudatoolkit
  ];

  hardware.nvidia = {
    modesetting.enable = true;
    powerManagement.enable = false;
    powerManagement.finegrained = false;
    # https://github.com/NVIDIA/open-gpu-kernel-modules#compatible-gpus 
    open = true;
    nvidiaSettings = true;
    package = config.boot.kernelPackages.nvidiaPackages.stable;
  };
}