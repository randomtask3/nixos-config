{ config,
  lib,
  pkgs,
  ...
}:{

  hardware.graphics = {
    enable = true;
    enable32Bit = true;

    extraPackages = with pkgs; [
      intel-media-driver
      intel-vaapi-driver
    ];
  };

  services.xserver.videoDrivers = [ "nvidia" ];

  hardware.nvidia = {
    # Pascal / Quadro P500
    package = config.boot.kernelPackages.nvidiaPackages.legacy_580;

    open = false;

    modesetting.enable = true;

    powerManagement.enable = true;
  };
}
