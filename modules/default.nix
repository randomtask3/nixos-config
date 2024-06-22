{ catppuccin,
  ...
}:{
  imports = [
    ./desktop
    ./development
    ./gaming
    ./packages
    ./scripts
    ./server
    ./system
    ./work
  ];

  catppuccin.flavor = "mocha";
  catppuccin.enable = true;
  catppuccin.accent = "mauve";
}