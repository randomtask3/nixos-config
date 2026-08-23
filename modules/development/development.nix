{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    ######## CODING & DDEVELOPMENT #########
    #texstudio texliveFull
    godot
    #obs-studio

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