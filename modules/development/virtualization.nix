{ config,
  lib,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [    
  ];

  programs.virt-manager.enable = true;
  users.groups.libvirtd.members = ["nick"];
  virtualisation.libvirtd.enable = true;
  virtualisation.spiceUSBRedirection.enable = true;
}
