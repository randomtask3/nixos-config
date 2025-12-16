{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  imports = [
  ];

  environment.systemPackages = with pkgs; [
    #brave
    libreoffice
  ];
}