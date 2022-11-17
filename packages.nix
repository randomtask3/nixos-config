{ pkgs, ... }:

{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [

    ######### GAMING SOFTWARE ###########
    discord
    prismlauncher
    mangohud goverlay
    #lutris
    protonup wine winetricks dxvk
    vulkan-tools mesa mesa-demos
    #gamescope

    ######### SOURCE PORTS ###########
    openrct2  
    #openmw
    #gzdoom
    #dhewm3
    #commandergenius
    #hhexen
    #uhexen2
    #iortcw

    ######## EMULATORS #########
    #dolphin-emu
    #pcsx2
    #rpcs3
    #citra-nightly
    #pcsxr
    #snes9x
    #ppsspp
    #mupen64plus
    #mednafen

    ######## CODING & DDEVELOPMENT #########
    vscodium # vscode
    neovim emacs kate
    rustup
    #texstudio
    git #github-desktop
    libreoffice

    ######## 3D & ART #######
    freecad
    openscad
    kicad
    cura
    goxel
    gimp
    inkscape
    #super-slicer

    ######## INTERNET & UTILITIES #########
    firefox librewolf vivaldi
    thunderbird
    #shotcut #audacity
    mcomix3 calibre
    piper libratbag
    anydesk
    vlc makemkv handbrake
    gnome.gnome-disk-utility
    # libsForQt5.sddm-kcm    
    libsForQt5.ark unrar
    keepass
    #qbittorrent #openvpn

    ######## CLI TOOLS ########
    kitty
    ranger
    wget
    neofetch
    htop
    cowsay
    w3m
    #bc
    #mutt
    #neomutt
    #feh
    #pyradio
    #wego
    #tty-solitaire
    #tty-clock
    #ninvaders
    #mpd
    #spotify-tui
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

        # character = {
        #   success_symbol = "[➜](bold green)";
        #   error_symbol = "[➜](bold red)";
        # };

        # package.disabled = true;
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
    flatpak.enable = true;
    # plex = {
      # enable = true;
      # openFirewall = true;
      # dataDir ="/var/lib/plex";
      # user = "plex";
      # group = "plex";
    # };
    jellyfin = {
      enable = true;
      openFirewall = true;
      user = "nick";
      group = "users";
    };
  };
}
