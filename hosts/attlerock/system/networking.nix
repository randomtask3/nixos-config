{
  networking = {
    networkmanager.enable = true;
    
    #dhcpcd.enable = false;
    #defaultGateway = "10.66.0.1";
    #nameservers = [ "1.1.1.1" "8.8.8.8" ];
    interfaces.enp2s0 = {
      wakeOnLan.enable = true;
      #wakeOnLan.policy = ["magic"];
    #  ipv4.addresses = [{
    #    address = "10.66.0.12";
    #    prefixLength = 24;
    #  }];
    };

    #vlans = {
    #  vlan100 = { id=100; interface="enp2s0"; };
    #  vlan101 = { id=101; interface="enp2s0"; };
    #};
    #interfaces.vlan100.ipv4.addresses = [{
    #  address = "10.1.1.2";
    #  prefixLength = 24;
    #}];
    #interfaces.vlan101.ipv4.addresses = [{
    #  address = "10.10.10.3";
    #  prefixLength = 24;
    #}];
  };

  # Configure network proxy if necessary
  # networking.proxy.default = "http://user:password@proxy:port/";
  # networking.proxy.noProxy = "127.0.0.1,localhost,internal.domain";

}
