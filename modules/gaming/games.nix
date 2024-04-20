{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
    ######### GAMING SOFTWARE ###########
    xivlauncher
    pkgs-stable.prismlauncher
    #unstable.vintagestory
    #mangohud goverlay
    #protonup wine winetricks dxvk
    #lutris
    #gamescope
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