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

  fallout-grub-theme = pkgs.fetchFromGitHub {
    owner = "shvchk";
    repo = "fallout-grub-theme";
    rev = "master";
    hash = "sha256-dNRLM9tQjWOyi3s4Q2er5Xn2bpG/yQ/D/+F/lfYXrs8=";
  };

  nashville96 = pkgs.stdenv.mkDerivation {
    pname = "nashville96";
    version = "unstable";

    src = pkgs.fetchFromGitHub {
      owner = "donfaustinocortizone";
      repo = "Nashville96";
      rev = "main";
      hash = "sha256-WwygjNutNYxvdl+WoWNk3nxNFFRmdrMhcqr0pPtbGfU=";
    };

    installPhase = ''
      mkdir -p $out/share/themes
      cp -r Themes/* $out/share/themes/
    '';
  };

  chicago95 = pkgs.stdenvNoCC.mkDerivation {
    pname = "chicago95";
    version = "git";

    src = pkgs.fetchFromGitHub {
      owner = "grassmunk";
      repo = "Chicago95";
      rev = "master";
      hash = "sha256-Qtk9cmWlppZA527VFFi64IuV4eDSkYh4YOeK5/TPmkw=";
    };

    installPhase = ''
      mkdir -p $out/share/themes
      mkdir -p $out/share/icons

      cp -r Theme/Chicago95 $out/share/themes/
      cp -r Icons/* $out/share/icons/
    '';
  };

  pixelitos-pixel-icons = pkgs.stdenvNoCC.mkDerivation {
    pname = "pixelitos-icon-theme";
    version = "20260721";

    src = pkgs.fetchFromGitHub {
      owner = "ItsZariep";
      repo = "pixelitos-icon-theme";
      rev = "20260721";
      hash = "sha256-UXNyY5LdaiKtcNQ/E5gmGt++MNZACW1eO6jRvMJ5YV0=";
    };

    nativeBuildInputs = [
      pkgs.imagemagick
      pkgs.gtk3
    ];

    installPhase = ''
      cd pixelitos-dark

      # Generate the 128x128 icons and icon cache.
      bash ./compile-icons.sh

      # Install the completed theme.
      mkdir -p $out/share/icons
      cp -r . $out/share/icons/pixelitos-dark

      # The build script isn't needed after installation.
      rm -f $out/share/icons/pixelitos-dark/compile-icons.sh
    '';
  };

in
{
  environment.systemPackages = [
    beosIcons
    pixelitos-pixel-icons
    buuf-nestort
    nashville96
    pkgs.papirus-icon-theme
    pkgs.mate-icon-theme
    pkgs.arc-icon-theme
    pkgs.numix-icon-theme
    chicago95
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
      </property>
      <property name="Net" type="empty">
        <property name="IconThemeName" type="string"
                  value="buuf-nestort"/>
      </property>
    </channel>
  '';

  boot.loader.grub = {
    theme = fallout-grub-theme;
  };
}