{ config,
  lib,
  pkgs,
  pkgs-unstable,
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
    libsForQt5.ark #unrar
    #gnome.gnome-tweaks
    #keepass
    #authy
    #qbittorrent #openvpn

    ######## SYSTEM & CLI TOOLS ########
    gparted
    #libimobiledevice usbmuxd ifuse
    w3m
    #curl
    feh
    #rofi
    #eww
  ];
}
