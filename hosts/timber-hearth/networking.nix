{
  networking = {
    #networkmanager.enable = true;
    
    dhcpcd.enable = false;
    defaultGateway = "10.66.0.1";
    nameservers = [ "1.1.1.1" "8.8.8.8" ];
    interfaces.enp0s31f6 = {
      wakeOnLan.enable = true;
      #wakeOnLan.policy = "magic";
      ipv4.addresses = [{
        address = "10.66.0.10";
        prefixLength = 24;
      }];
    };
  };
}
