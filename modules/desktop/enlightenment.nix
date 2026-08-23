{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
    
  services = {
    xserver = {
      enable = true;
      desktopManager = {
        enlightenment.enable = true;
      };
      #displayManager.lightdm.enable = true;
    };
  };

  
  environment.systemPackages = with pkgs; [ 
    #connman
  ];

  environment.enlightenment.excludePackages = [ pkgs.enlightenment.econnman ];
  #services.connman.enable = true;
  
}