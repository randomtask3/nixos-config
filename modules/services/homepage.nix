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
      title = "Outer Wilds Ventures";
      theme = "dark";
      color = "slate";
      #color = "violet";

      layout = {
        "Network" = {
          style = "rows";
          columns = 3;
        };

        "Services" = {
          style = "rows";
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
              widget = {
                type = "jellyfin";
                url = "http://10.66.0.10:8096";
                key = "9c53450c9c50410e91badb5470831c1e";
                #version: 2 # optional, default is 1
                #enableBlocks: true # optional, defaults to false
                #enableNowPlaying: true # optional, defaults to true
                #enableUser: true # optional, defaults to false
                #enableMediaControl: false # optional, defaults to true
                #showEpisodeNumber: true # optional, defaults to false
                #expandOneStreamToTwoRows: false # optional, defaults to true
              };
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
          #disk = "/home/nick/Media/hdd1-8tb";
          #disk = "/home/nick/Media/hdd2-4tb";
          #disk = "/home/nick/Media/hdd3-2tb";
        };
      }

      {
        datetime = {
          format = "yyyy-MM-dd HH:mm";
        };
      }
      {
        
      }
    ];
  };
}