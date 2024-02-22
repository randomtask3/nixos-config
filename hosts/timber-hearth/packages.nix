{ pkgs, 
  helix, 
  config, 
  ... 
}:
let
  unstable = import <nixos-unstable> { config = { allowUnfree = true; }; };
in {  
  nixpkgs.config = {
    allowUnfree = true;
    permittedInsecurePackages = [
      #"electron-12.2.3"
    ];
  };
  environment.systemPackages = with pkgs; [

    # Install Helix from the `helix` input
    #helix.packages."${pkgs.system}".helix
    
    ######### GAMING SOFTWARE ###########
    xivlauncher
    discord
    prismlauncher
    #unstable.vintagestory
    #mangohud goverlay
    #protonup wine winetricks dxvk
    #lutris
    #gamescope
    #eidolon
    
    ######### SOURCE PORTS ###########
    #openrct2
    #unstable.shipwright
    #openloco
    #openmw
    #gzdoom
    #dhewm3
    #commandergenius
    #hhexen
    #uhexen2
    #iortcw

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
    vscodium
    emacs
    #rustup
    #texstudio texlive.combined.scheme-full
    git #github-desktop
    #libreoffice

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
    firefox #vivaldi
    #thunderbird #protonmail-bridge #electron-mail
    #shotcut #audacity
    #mcomix3 calibre
    piper libratbag
    gnucash
    #tigervnc
    vlc #makemkv handbrake
    #libsForQt5.ark unrar
    #gnome.gnome-tweaks
    #keepass
    #authy
    #qbittorrent #openvpn
    #etcher

    ######## SYSTEM & CLI TOOLS ########
    kitty
    mc
    dialog
    gparted
    libimobiledevice usbmuxd ifuse
    #rofi
    #eww
    #cava
    #tty-clock
    wget
    curl
    #neofetch
    #htop
    #cowsay
    w3m
    #tmux
    #bc
    #mutt
    #neomutt
    feh
    #pyradio
    #wego
    #tty-solitaire
    #ninvaders
    #mpd
    #tuir
    #mps-youtube
    
  ];

  programs = {
    steam = {
      enable = true;
      remotePlay.openFirewall = true; # Open ports in the firewall for Steam Remote Play
      dedicatedServer.openFirewall = true; # Open ports in the firewall for Source Dedicated Server
    };

    starship = {
      enable = true;
      settings = {
        # add_newline = false;
      };
    };

    # Some programs need SUID wrappers, can be configured further or are started in user sessions.
    # mtr.enable = true;
    # gnupg.agent = {
      # enable = true;
      # enableSSHSupport = true;
    # };
  };

  services = {
    # flatpak.enable = true;

    #jellyfin = {
    #  enable = true;
    #  openFirewall = true;
    #  user = "nick";
    #  group = "users";
    #=};
  };
}