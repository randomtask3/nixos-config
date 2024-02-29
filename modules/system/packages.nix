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
    };
    git = {
      enable = true;
      #config = ''
      #  user.name randomtask3
      #  user.email nbrooker@proton.me
      #  core.autocrlf input
      #'';
    };
    virt-manager = {
      enable = true;
    };
  };
}