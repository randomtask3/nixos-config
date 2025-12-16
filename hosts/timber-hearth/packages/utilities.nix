{ config,
  lib,
  pkgs,
  pkgs-stable,
  helix,
  ... 
}:{
  environment.systemPackages = with pkgs; [    

    ######## INTERNET & UTILITIES #########
    #vivaldi
    #thunderbird #protonmail-bridge #electron-mail
    #shotcut #audacity
    #mcomix3 calibre
    piper libratbag
    vlc #makemkv handbrake
    kdePackages.ark
    #gnome.gnome-tweaks
    #keepass
    #authy
    #qbittorrent #openvpn

    ######## SYSTEM & CLI TOOLS ########
    #gparted
    #libimobiledevice usbmuxd ifuse
    #w3m
    #curl
    feh
    #xorg.libxcvt
    #rofi
    #eww
  ];
}
