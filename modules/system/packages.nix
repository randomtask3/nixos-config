{ config,
  pkgs,
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