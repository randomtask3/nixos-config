{
  networking.firewall = {
    enable = true;
    allowPing = true;
    allowedTCPPorts = [ 
      445 
      139 
    ]; #Ports for Samba and Nextcloud
    allowedUDPPorts = [ 
      137 
      138 
    ];
  };
}
