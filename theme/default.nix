{ catppuccin, 
  ... 
}:{
  imports = [
    ./grub.nix
    ./theme.nix
  ];

  catppuccin = {
    enable = true;
    flavor = "mocha";
    autoEnable = true;
    accent = "mauve";
    grub.enable = false;
  };
}
