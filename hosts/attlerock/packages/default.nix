{ config,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  imports = [
  ];

  environment.systemPackages = with pkgs; [
    #brave
    libreoffice
  ];
}