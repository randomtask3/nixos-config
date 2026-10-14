{ config,
  pkgs,
  pkgs-stable,
  ... 
}:{

  environment.systemPackages = [
    pkgs.catppuccin-gtk
    pkgs.gruvbox-dark-gtk
    #pkgs.gruvbox-gtk-theme
    pkgs.onestepback
  ];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    autoEnable = true;
    accent = "mauve";
    grub.enable = false;
  };

}