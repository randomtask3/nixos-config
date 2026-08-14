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
  
  buuf-nestort = pkgs.stdenvNoCC.mkDerivation {
    pname = "buuf-nestort";
    version = "unstable";

    src = pkgs.fetchgit {
      url = "https://git.disroot.org/eudaimon/buuf-nestort.git";
      rev = "ba218523983aec90f1e9facaefeeeeecdcf6d6a5";
      hash = "sha256-6aEM+rL7chkP83Rol6/F5jmG3mo6vALPk2pIvkUK1rU=";
    };

    installPhase = ''
      mkdir -p $out/share/icons/buuf-nestort
      cp -r ./* $out/share/icons/buuf-nestort/
    '';
  };
in
{
  environment.systemPackages = [
    beosIcons
    buuf-nestort
    pkgs.papirus-icon-theme
    pkgs.mate-icon-theme
    pkgs.arc-icon-theme
    pkgs.numix-icon-theme
    pkgs.chicago95
    pkgs.catppuccin-gtk
    pkgs.gruvbox-dark-gtk
    #pkgs.gruvbox-gtk-theme
    pkgs.onestepback
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
                  value="buuf-nestort"/>
      </property>
      <property name="Net" type="empty">
        <property name="IconThemeName" type="string"
                  value="buuf-nestort"/>
      </property>
    </channel>
  '';
}