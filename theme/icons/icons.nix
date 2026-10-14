{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{

  environment.systemPackages = [
    pkgs.papirus-icon-theme
    #pkgs.mate-icon-theme
    #pkgs.arc-icon-theme
    #pkgs.numix-icon-theme
    pkgs.elementary-xfce-icon-theme
  ];

}