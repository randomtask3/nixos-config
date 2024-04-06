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
    steamPackages.steamcmd
    #steam-tui
    
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

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
      gamescopeSession = {
        enable = true;
        args = [

        ];
      };
    };

    gamemode.enable = true;
  };
}