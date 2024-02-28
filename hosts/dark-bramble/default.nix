{
  imports = [
    ./hardware-configuration.nix
    ./nvidia.nix
    ./packages.nix
    ../../modules/system
    #../../modules/programs
    ../../scripts
  ];
  networking.hostName = "dark-bramble";
  system.stateVersion = "23.11";
}