{ config,
  pkgs,
  pkgs-stable,
  ... 
}:
let
  beosIcons = pkgs.stdenvNoCC.mkDerivation {
    pname = "beos-r5-icons";
    version = "unstable-2018-07-12";

    src = pkgs.fetchFromGitHub {
      owner = "jcherven";
      repo = "BeOS-r5-Icons";
      rev = "main";
      hash = "sha256-6qnOWMdwgK9tKifHXSF6s1KjHkdIG/jnM9Te43cVOjo=";
    };

    # The upstream repo contains dangling symlinks.
    dontCheckForBrokenSymlinks = true;

    installPhase = ''
      mkdir -p $out/share/icons/BeOS-r5-Icons
      cp -r ./* $out/share/icons/BeOS-r5-Icons/

      # Remove dangling symlinks from the upstream repository.
      find $out/share/icons/BeOS-r5-Icons -xtype l -delete
    '';
  };
  
in
{
  environment.systemPackages = [
    beosIcons
  ];

  gtk.iconCache.enable = false;
  
  # Tell XFCE to use the BeOS icons.
  programs.xfconf.enable = true;

  environment.etc."xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml".text = ''
    <?xml version="1.0" encoding="UTF-8"?>

    <channel name="xsettings" version="1.0">
      <property name="Net" type="empty">
        <property name="IconThemeName" type="string"
                  value="BeOS-r5-Icons"/>
      </property>
    </channel>
  '';
}