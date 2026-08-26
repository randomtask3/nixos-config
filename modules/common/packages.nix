{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    wget
    kitty
    #lunarvim
    vscodium
    wakeonlan
    libreoffice
    cifs-utils
    gparted
    pcmanfm
  ];

  programs.firefox.enable = true;
  programs.neovim.enable = true;
  programs.yazi = {
    enable = true;
    settings = {

    };
  };

  environment.variables = {
    EDITOR = "nvim";
    VISUAL = "nvim";
    TERMINAL = "kitty";
  };
}
