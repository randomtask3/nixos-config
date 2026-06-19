{ pkgs,
  ... 
}:{
  environment.systemPackages = with pkgs; [
    tailscale
  ];

  services.tailscale = {
    enable = true;
    extraUpFlags = [
      "--advertise-exit-node"
      "--ssh"
    ];
  };
}