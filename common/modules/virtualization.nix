{ pkgs, ... }:
{ 
  virtualisation = {
    # docker.enable = true;
    podman = {
      enable = true;
      
      # Create a `docker` alias for podman, to use it as a drop-in replacement
      dockerCompat = true;

      # Required for containers under podman-compose to be able to talk to each other.
      defaultNetwork.dnsname.enable = true;

    };

    oci-containers.backend = "podman";
    oci-containers.containers = {
      container-name = {
        image = "container-image";
        autoStart = true;
        ports = [ "127.0.0.1:1234:1234" ];
      };
    };
  };
}
