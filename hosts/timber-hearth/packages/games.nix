{ config,
  lib,
  pkgs,
  pkgs-unstable,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    ######### GAMING SOFTWARE ###########
    #xivlauncher
    prismlauncher
    #pkgs-unstable.vintagestory
    #wineWowPackages.full winetricks dxvk
    #lutris
    #steam-tui
    #samrewritten
    #steamtinkerlaunch
    #steamguard-cli
    
    ######### SOURCE PORTS ###########
    openrct2
    shipwright
    _2ship2harkinian
    #openloco
    #dhewm3
    #fallout-ce
    #fallout2-ce
    #openxray
    #arx-libertatis

    ######## EMULATORS #########
    cemu
    dolphin-emu
    pcsx2
    rpcs3
    #citra-nightly
    duckstation
    #snes9x
    #ppsspp
    simple64
    #shadps4
    #yuzu-mainline
    #mednafen
  ];
}
