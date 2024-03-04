{
  imports = [
    ./hardware-configuration.nix
    ./modules
    ../../common
  ];
  networking.hostName = "dark-bramble";
  system.stateVersion = "23.11";
}