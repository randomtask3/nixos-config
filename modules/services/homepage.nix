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

      statusStyle = "dot";

      layout = {
        "Network" = {
          style = "rows";
          columns = 3;
        };

        "Media" = {
          style = "rows";
          columns = 3;
        };

        "Books & Documents" = {
          style = "rows";
          columns = 3;
        };

        "Services" = {
          style = "rows";
          columns = 3;
        };

        "System" = {
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

              widget = {
                type = "adguard";
                url = "http://10.66.0.10:3002";
                username = "YOUR_USERNAME";
                password = "YOUR_PASSWORD";
              };
            };
          }

          {
            "Router" = {
              href = "http://10.66.0.1";
              description = "TP-Link AX3000";
              icon = "router.png";
            };
          }

          {
            "Uptime Kuma" = {
              href = "http://10.66.0.10:3001";
              description = "Service Monitoring";
              icon = "uptime-kuma.png";

              widget = {
                type = "uptimekuma";
                url = "http://10.66.0.10:3001";
                slug = "YOUR_STATUS_PAGE_SLUG";
              };
            };
          }

          {
            "Syncthing" = {
              href = "http://10.66.0.10:8384";
              description = "File Synchronization";
              icon = "syncthing.png";
            };
          }
        ];
      }

      {
        "Media" = [
          {
            "Jellyfin" = {
              href = "http://10.66.0.10:8096";
              description = "Movies & TV Shows";
              icon = "jellyfin.png";

              widget = {
                type = "jellyfin";
                url = "http://10.66.0.10:8096";
                key = "YOUR_JELLYFIN_API_KEY";

                enableBlocks = true;
                enableNowPlaying = true;
                enableUser = true;
              };
            };
          }

          {
            "Navidrome" = {
              href = "http://10.66.0.10:4533";
              description = "Music Server";
              icon = "navidrome.png";
            };
          }

          {
            "Immich" = {
              href = "http://10.66.0.10:2283";
              description = "Photos & Videos";
              icon = "immich.png";

              widget = {
                type = "immich";
                url = "http://10.66.0.10:2283";
                key = "YOUR_IMMICH_API_KEY";
                version = 2;
              };
            };
          }
        ];
      }

      {
        "Books & Documents" = [
          {
            "Calibre-Web" = {
              href = "http://10.66.0.10:8083";
              description = "Ebook Library";
              icon = "calibre-web.png";
            };
          }

          {
            "Kavita" = {
              href = "http://10.66.0.10:5000";
              description = "Books & Comics";
              icon = "kavita.png";
            };
          }

          {
            "Paperless" = {
              href = "http://10.66.0.10:28981";
              description = "Document Management";
              icon = "paperless-ngx.png";
            };
          }

          {
            "BookStack" = {
              href = "http://10.66.0.10:8000";
              description = "Documentation";
              icon = "bookstack.png";
            };
          }

          {
            "Kiwix" = {
              href = "http://10.66.0.10:8081";
              description = "Offline Knowledge";
              icon = "kiwix.png";
            };
          }
        ];
      }

      {
        "Services" = [
          {
            "Nextcloud" = {
              href = "http://10.66.0.10";
              description = "Cloud Storage";
              icon = "nextcloud.png";
            };
          }

          {
            "Mealie" = {
              href = "http://10.66.0.10:9925";
              description = "Recipes & Meal Planning";
              icon = "mealie.png";
            };
          }

          {
            "Linkwarden" = {
              href = "http://10.66.0.10:3003";
              description = "Bookmarks";
              icon = "linkwarden.png";
            };
          }

          {
            "Forgejo" = {
              href = "http://10.66.0.11:3000";
              description = "Git Hosting";
              icon = "forgejo.png";
            };
          }
        ];
      }

      {
        "System" = [
          {
            "Ollama" = {
              href = "http://10.66.0.10:11434";
              description = "Local AI";
              icon = "ollama.png";
            };
          }

          {
            "Open WebUI" = {
              href = "http://10.66.0.10:8080";
              description = "AI Chat Interface";
              icon = "open-webui.png";
            };
          }

          {
            "Samba" = {
              description = "Network File Shares";
              icon = "mdi-folder-network";
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