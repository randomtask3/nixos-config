{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  options = {
    development.enable = lib.mkEnableOption "enables development";
  };

  environment.systemPackages = with pkgs; [    
    ######## CODING & DDEVELOPMENT #########
    #rustup
    #texstudio texlive.combined.scheme-full
    #libreoffice
    #helix.packages."${pkgs.system}".helix

    ######## 3D & ART #######
    #freecad
    #openscad
    #kicad
    #cura
    #goxel
    #gimp
    #inkscape
    #super-slicer
  ];
}