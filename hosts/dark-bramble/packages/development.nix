{ config,
  lib,
  pkgs,
  pkgs-unstable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    ######## CODING & DDEVELOPMENT #########
    texstudio texliveFull

    ######## 3D & ART #######
    #freecad
    #openscad
    #kicad
    #cura
    #goxel
    #gimp
    #inkscape
    super-slicer
  ];
}