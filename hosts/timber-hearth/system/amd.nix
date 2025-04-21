{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  boot.initrd.kernelModules = [ "amdgpu" ];
  services.xserver.videoDrivers = [ "amdgpu" ];
  #hardware.graphics.extraPackages32
  #hardware.graphics.extraPackages
  #hardware.graphics.enable32Bit
  #hardware.opengl = {
    ## radv: an open-source Vulkan driver from freedesktop
    #driSupport = true;
    #driSupport32Bit = true;

    ## amdvlk: an open-source Vulkan driver from AMD
    #extraPackages = [ pkgs.amdvlk ];
    #extraPackages32 = [ pkgs.driversi686Linux.amdvlk ];
  #};
}
