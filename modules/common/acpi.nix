{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [ 
    acpi
    acpid
  ];

  services.acpid.enable = true;
  
}