{ catppuccin, 
  ... 
}:{
  imports = [
    ./theme.nix
  ];

  catppuccin.flavor = "mocha";
  catppuccin.enable = true;
  catppuccin.autoEnable = true;
  catppuccin.accent = "mauve";
}
