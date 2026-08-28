{ pkgs,
  config,
  lib,
  ...
}:{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  # Make sure AMDGPU is available early
  boot.initrd.kernelModules = [ "amdgpu" ];
}
