{
  networking = {
    #networkmanager.enable = true;
    
    #dhcpcd.enable = false;
    #defaultGateway = "10.66.0.1";
    #nameservers = [ "1.1.1.1" "8.8.8.8" ];
    #interfaces.wlp4s0 = {
    #  wakeOnLan.enable = true;
    #  #wakeOnLan.policy = "magic";
    #  ipv4.addresses = [{
    #    address = "10.66.0.11";
    #    prefixLength = 24;
    #  }];
    #};
    
}
