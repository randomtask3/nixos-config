{ config,
  pkgs,
  helix,
  ... 
}:{
  # List packages installed in system profile. To search, run:
  # $ nix search wget
  nixpkgs.config.allowUnfree = true;
  environment.systemPackages = with pkgs; [
  #   vim # Do not forget to add an editor to edit configuration.nix! The Nano editor is also installed by default.
    wget
    firefox
    kitty
    mc
    dialog
    vscodium
    virtio-win
    helix.packages."${pkgs.system}".helix
    discord
    teams-for-linux
    wineWowPackages.full
    winetricks dxvk
  ];

  virtualisation.libvirtd.enable = true;
  programs = {
    virt-manager = {
      enable = true;
    };
    steam = {
      enable = true;
    };
    git = {
      enable = true;
      #config = ''
      #  user.name "Nick Brooker"
      #  user.email nbrooker@proton.me
      #  core.autocrlf input
      #'';
    };
  };
}