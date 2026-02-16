{ pkgs,
  config,
  lib,
  ...
}:{
  #boot.kernelParams = [ "i915.force_probe=46d1" ];
  hardware.graphics = {
    enable = true;
    extraPackages = with pkgs; [
      #onevpl-intel-gpu    # NixOS <=24.05
      vpl-gpu-rt         # NixOS >24.05 or unstable
    ];
  };
}
