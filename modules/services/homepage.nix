{ pkgs,
  ...
}:{
  services.homepage-dashboard = {
    enable = true;
    package = pkgs.homepage-dashboard;
    listenPort = 8082;
    openFirewall = true;

    allowedHosts = "10.66.0.10:8082";

    settings = {
      title = "Home Server";
      theme = "dark";
      color = "slate";

      layout = {
        "Network" = {
          style = "columns";
          columns = 3;
        };

        "Services" = {
          style = "columns";
          columns = 3;
        };
      };
    };

    bookmarks = [
      {
        "Network" = [
          {
            "TP-Link AX3000" = [
              {
                abbr = "TP";
                href = "http://10.66.0.1";
              }
            ];
          }
        ];
      }
    ];

    services = [
      {
        "Network" = [
          {
            "AdGuard Home" = {
              href = "http://10.66.0.10:3002";
              description = "DNS & Ad Blocking";
              icon = "adguard-home.png";
            };
          }

          {
            "Router" = {
              href = "http://10.66.0.1";
              description = "TP-Link AX3000";
              icon = "router.png";
            };
          }
        ];
      }

      {
        "Services" = [
          {
            "Immich" = {
              href = "http://10.66.0.10:2283";
              description = "Photos & Videos";
              icon = "immich.png";
            };
          }

          {
            "Jellyfin" = {
              href = "http://10.66.0.10:8096";
              description = "Media Server";
              icon = "jellyfin.png";
            };
          }

          {
            "Nextcloud" = {
              href = "http://10.66.0.10";
              description = "Nextcloud Server";
              icon = "nextcloud.png";
            };
          }
        ];
      }
    ];

    widgets = [
      {
        resources = {
          cpu = true;
          memory = true;
          disk = "/";
        };
      }

      {
        datetime = {
          format = "yyyy-MM-dd HH:mm";
        };
      }
    ];
  };
}