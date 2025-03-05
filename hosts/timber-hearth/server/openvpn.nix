{ config, pkgs, ... }:
{
    environment.systemPackages = with pkgs; [
        openvpn
    ];
    services.openvpn.servers = {
        serverVPN  = { 
            config = '' config /home/nick/NixOS/modules/config/ca-112.protonvpn.udp.ovpn ''; 
            updateResolvConf = true;
        };
    };
}