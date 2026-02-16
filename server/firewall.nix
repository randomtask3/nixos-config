{
  networking.firewall = {
    enable = true;
    allowPing = true;
    allowedTCPPorts = [ 
      22
      80 
      443 
      445 
      139 
      8123
    ]; #Ports for Samba and Nextcloud
    allowedUDPPorts = [ 
      137 
      138 
    ];
  };
}