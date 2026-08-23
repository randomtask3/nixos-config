{ config,
  lib,
  ... 
}:{
  imports = [
    #./test.nix
    ./services
  ];
  disabledModules = [
    #../../system/desktop.nix
  ];
}
