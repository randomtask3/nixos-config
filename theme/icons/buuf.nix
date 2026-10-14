{ config,
  pkgs,
  pkgs-stable,
  ... 
}:
let

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
    buuf-nestort
  ];

  gtk.iconCache.enable = false;
  
  # Tell XFCE to use the BeOS icons.
  programs.xfconf.enable = true;

  environment.etc."xdg/xfce4/xfconf/xfce-perchannel-xml/xsettings.xml".text = ''
    <?xml version="1.0" encoding="UTF-8"?>

    <channel name="xsettings" version="1.0">
      <property name="Net" type="empty">
        <property name="IconThemeName" type="string"
                  value="buuf-nestort"/>
      </property>
    </channel>
  '';
}