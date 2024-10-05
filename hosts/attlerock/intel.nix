{ pkgs,
  config,
  lib,
  ...
}:{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  boot.kernelParams = [ "i915.force_probe=46d1" ];
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      vpl-gpu-rt          # for newer GPUs on NixOS >24.05 or unstable
      # onevpl-intel-gpu  # for newer GPUs on NixOS <= 24.05
      # intel-media-sdk   # for older GPUs
    ];
  };
}
