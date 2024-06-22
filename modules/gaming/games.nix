{ config,
  lib,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    ######### GAMING SOFTWARE ###########
    xivlauncher
    prismlauncher
    #pkgs-unstable.vintagestory
    #protonup wineWowPackages.full winetricks dxvk
    #lutris
    #steam-tui
    #samrewritten
    #steamtinkerlaunch
    #steamguard-cli
    
    ######### SOURCE PORTS ###########
    #openrct2
    #shipwright
    #openloco
    #dhewm3
    #fallout-ce
    #fallout2-ce
    #openxray
    #arx-libertatis

    ######## EMULATORS #########
    #cemu
    #dolphin-emu
    #pcsx2
    #rpcs3
    #citra-nightly
    #pcsxr
    #snes9x
    #ppsspp
    #mupen64plus
    #yuzu-mainline
    #mednafen
  ];
}