{ config,
  lib,
  pkgs,
  ...
}:{

  services.acpid.enable = true;
  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];



  #services.xserver.videoDrivers = [ "nvidia" ];
  #hardware = {
  #  opengl = {
  #    enable = true;
  #    driSupport = true;
  #    driSupport32Bit = true;
  #  };
  #  nvidia = {
  #    modesetting.enable = true;
  #    powerManagement.enable = false;
  #    powerManagement.finegrained = false;
  #    open = false;
  #    nvidiaSettings = true;
  #    package = config.boot.kernelPackages.nvidiaPackages.stable;
  #    
  #    #prime = {
  #    #  #sync.enable = true;
  #    #  offload.enable = true;
  #    #  offload.enableOffloadCmd = true;
  #    #  intelBusId = "PCI:0:2:0";
  #    #  nvidiaBusId = "PCI:1:0:0";
  #    #};
  #  };
  #};
}
