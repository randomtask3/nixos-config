{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    firefox
    kitty
    mc
    dialog
    discord
    vscodium
    gnome.gnome-tweaks
    steamPackages.steamcmd
    steam-tui
    #fallout-ce
    #fallout2-ce
    #openrct2
    #openloco
  ];

  virtualisation.libvirtd.enable = true;
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
    git.enable = true;
    virt-manager.enable = true;
  };
}