{
  networking.firewall.allowedTCPPorts = [
    8084
  ];

  services.atticd = {
    enable = true;

    settings = {
      listen = "0.0.0.0:8084";
    };

    environmentFile = "/root/.attic-env-file";
  };

  environment.systemPackages = with pkgs; [
    attic-client
    # sudo -u nick calibredb list --with-library /srv/calibre/library
    # sudo -u nick calibredb add /path/to/comic.cbz --with-library /srv/calibre/library
  ];
}

/*
Generate the server secretOn timber-hearth, create the environment file:

  sudo install -m 600 /dev/null /root/.attic-env-file
  sudoedit /root/.attic-env-file

Add this line, replacing the placeholder with the output of the next command:

  ATTIC_SERVER_TOKEN_RS256_SECRET_BASE64="YOUR_GENERATED_SECRET"

Generate the secret with:
  nix run nixpkgs#openssl -- genrsa -traditional 4096 | base64 -w0

Copy the output into the environment file, keeping it on a single line. Do not commit this secret to your NixOS configuration repository. Attic uses it to sign and verify API authentication tokens. Attic
Apply the configuration
After adding the module to your existing configuration:

  sudo nixos-rebuild switch

Check the service:
  
  systemctl status atticd
  sudo ss -ltnp | grep 8084

From another host, test connectivity:

  curl http://10.66.0.10:8084/

An API error or other HTTP response can still indicate that the server is reachable; the root path isn't necessarily a health endpoint.

Once you've verified Attic is running, you can remove the old services.nix-serve configuration and close port 5000 if nothing else uses it.
2. Create the homelab cache and authentication tokens
First, generate an administrative token on timber-hearth:

  sudo atticd-atticadm make-token \
    --sub homelab-admin \
    --validity 1y \
    --create-cache homelab \
    --configure-cache homelab \
    --pull homelab \
    --push homelab

Copy the resulting token securely. It is a credential, so don't put it in your Git repository.

Install the Attic client on timber-hearth if necessary. In the following commands, attic refers to that client.

Log in and create the cache:
  attic login homelab http://10.66.0.10:8084 YOUR_ADMIN_TOKEN
  attic cache create homelab
  attic cache configure homelab --public

Making the cache public permits unauthenticated downloads. Since this is a LAN-only setup, restrict port 8084 to your trusted network if you want the cache to remain private to your household.

Attic's documented workflow supports creating caches, configuring public read access, and generating restricted tokens.
*/