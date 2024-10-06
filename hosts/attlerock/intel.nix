{ pkgs,
  config,
  lib,
  ...
}:{
  boot.kernelPackages = pkgs.linuxPackages_latest;
  #boot.kernelParams = [ "i915.force_probe=46d1" ];
  hardware.opengl = {
    enable = true;
    extraPackages = with pkgs; [
      onevpl-intel-gpu    # NixOS <=24.05
      #vpl-gpu-rt         # NixOS >24.05 or unstable
    ];
  };
}
