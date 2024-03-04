{ config,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:
let
  #stable = import inputs.nix { config = { allowUnfree = true; }; };
in {
  environment.systemPackages = with pkgs; [    
    ######### GAMING SOFTWARE ###########
    xivlauncher
    pkgs-stable.prismlauncher
    #unstable.vintagestory
    #mangohud goverlay
    #protonup wine winetricks dxvk
    #lutris
    #gamescope
    
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

    ######## CODING & DDEVELOPMENT #########
    emacs
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

    ######## INTERNET & UTILITIES #########
    #vivaldi
    #thunderbird #protonmail-bridge #electron-mail
    #shotcut #audacity
    #mcomix3 calibre
    piper libratbag
    gnucash
    vlc #makemkv handbrake
    #libsForQt5.ark unrar
    #gnome.gnome-tweaks
    #keepass
    #authy
    #qbittorrent #openvpn

    ######## SYSTEM & CLI TOOLS ########
    gparted
    libimobiledevice usbmuxd ifuse
    w3m
    curl
    feh
    #rofi
    #eww
  ];

  programs = {
  };

  services = {
    # flatpak.enable = true;

    #jellyfin = {
    #  enable = true;
    #  openFirewall = true;
    #  user = "nick";
    #  group = "users";
    #};
  };
}