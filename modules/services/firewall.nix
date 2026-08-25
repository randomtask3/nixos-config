{
  networking.firewall = {
    enable = true;
    allowPing = true;
    allowedTCPPorts = [ 
      22 #SSH
      80 #nextcloud 
      443 
      445 
      139 
      8123 #home-assistant
      9925 #mealie
    ]; #Ports for Samba and Nextcloud
    allowedUDPPorts = [ 
      137 
      138 
    ];
  };
}
