{ appimageTools, fetchurl }:
let
  version = "5.11.0";
  pname = "ivySCI";

  src = fetchurl {
    url = "https://package.cdn.ivysci.com/ivysci-release-updater/${pname}-${version}.AppImage";
    hash = "sha256-2/AjXRIEvOx+cKfY6wOmAUnduHap3jaFWoPDwP5sJjM=";
  };


  appimageContents = appimageTools.extract {
    inherit pname version src;
  };
in
appimageTools.wrapType2 {
  inherit pname version src;

  extraPkgs = pkgs: [ pkgs.at-spi2-core ];

  extraInstallCommands = ''
    # ls $out/bin/
    # mv $out/bin/${pname} $out/bin/${pname}
    # ls ${appimageContents}
    # ls $out/share/applications/
    install -m 444 -D ${appimageContents}/ivysci-desktop-app.desktop $out/share/applications/ivysci-desktop-app.desktop
    install -m 444 -D ${appimageContents}/ivysci-desktop-app.png \
      $out/share/icons/hicolor/512x512/apps/ivysci-desktop-app.png
    substituteInPlace $out/share/applications/ivysci-desktop-app.desktop \
      --replace-fail 'Exec=AppRun' 'Exec=${pname}'
  '';
}
